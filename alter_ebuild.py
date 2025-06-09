import os
import tarfile
import zipfile
import tomllib
import subprocess
import re
from pathlib import Path

def get_tarball_extension(ebuild_path):
    """
    Extract the tarball extension from the SRC_URI variable in the ebuild file.
    """
    with open(ebuild_path, 'r') as file:
        for line in file:
            if line.startswith("SRC_URI="):
                match1 = re.search(r'(\.tar\.(gz|bz2|xz))\s*->\s*\$\{P\}\.gh(\.tar\.(gz|bz2|xz))', line)
                match2 = re.search(r'(\.zip)\s*->\s*\$\{P\}\.gh(\.zip)', line)
                if match1:
                    before_p = match1.group(1)  # Extension before `${P}`
                    after_p = match1.group(3)  # Extension after `${P}`
                elif match2:
                    before_p = match2.group(1)  # Extension before `${P}`
                    after_p = match2.group(2)  # Extension after `${P}`
                else:
                    raise ValueError(f"Extensions before and after '${{P}}' do not match in {ebuild_path}")
                if before_p != after_p:
                    raise ValueError(f"Extensions before and after '${{P}}' do not match in {ebuild_path}")
                return after_p  # Return the extension after `${P}`
    raise ValueError(f"No tarball extension found in SRC_URI for {ebuild_path}")

def parse_pyproject_toml(pyproject_content):
    """
    Parse the pyproject.toml content from memory and extract the build-system section.
    """
    try:
        pyproject_data = tomllib.loads(pyproject_content)  # Use `toml.loads()` for Python < 3.11
    except Exception as e:
        raise ValueError(f"Failed to parse pyproject.toml: {e}")

    build_system = pyproject_data.get("build-system", None)
    if build_system:
        build_backend = build_system.get("build-backend", None)
        if build_backend:
            return re.split(r'[._]', build_backend)[0]

    poetry_section = pyproject_data.get("tool", {}).get("poetry", None)
    if poetry_section is not None:
        return 'poetry'

    raise ValueError("No build-system section found in pyproject.toml")

def extract_tarball_folder(tarball_path):
    """
    Extract the tarball and return the top-level folder inside.
    """
    if not tarfile.is_tarfile(tarball_path):
        raise ValueError(f"{tarball_path} is not a valid tarball")

    with tarfile.open(tarball_path, 'r:*') as tar:
        folders = [member.name.split('/')[0] for member in tar.getmembers() if '/' in member.name]
        unique_folders = set(folders)

        if len(unique_folders) != 1:
            raise ValueError(f"Tarball {tarball_path} contains multiple or no top-level folders")

        for member in tar.getmembers():
            if member.name.endswith('setup.py') or member.name.endswith('setup.cfg'):
                return [unique_folders.pop(), 'setuptools']
        for member in tar.getmembers():
            if member.name.endswith('pyproject.toml'):
                with tar.extractfile(member) as file:
                    return [unique_folders.pop(), parse_pyproject_toml(file.read().decode("utf-8"))]

def extract_top_level_folder_from_zip(zip_path):
    """
    Extract the zip file and return the top-level folder inside.
    """
    if not zipfile.is_zipfile(zip_path):
        raise ValueError(f"{zip_path} is not a valid zip file")

    with zipfile.ZipFile(zip_path, 'r') as zip_file:
        folders = [name.split('/')[0] for name in zip_file.namelist() if '/' in name]
        unique_folders = set(folders)

        if len(unique_folders) != 1:
            raise ValueError(f"Zip file {zip_path} contains multiple or no top-level folders")

        for name in zip_file.namelist():
            if name.endswith('setup.py') or name.endswith('setup.cfg'):
                return [unique_folders.pop(), 'setuptools']

        for name in zip_file.namelist():
            if name.endswith('pyproject.toml'):
                with zip_file.open(name) as file:
                    return [unique_folders.pop(), parse_pyproject_toml(file.read().decode("utf-8"))]

def update_ebuild(ebuild_path, s_variable_value, pep517_value):
    """
    Update the ebuild file with the new S variable.
    """
    ebuild_path = Path(ebuild_path)
    if not ebuild_path.is_file():
        raise FileNotFoundError(f"{ebuild_path} does not exist")

    with ebuild_path.open('r') as file:
        lines = file.readlines()

    if pep517_value == 'pdm':
        pep517_value = 'pdm-backend'
    pep517_line = f'DISTUTILS_USE_PEP517={pep517_value}\n'
    s_variable_line = f'S="${{WORKDIR}}/{s_variable_value}"\n'
    updated = False

    for i, line in enumerate(lines):
        if line.startswith('S='):
            lines[i] = s_variable_line
            updated = True
            break

    for i, line in enumerate(lines):
        if line.startswith('DISTUTILS_USE_PEP517='):
            lines[i] = pep517_line
            if not lines[i + 1].startswith('PYPI_NO_NORMALIZE'):
                lines.insert(i + 1, 'PYPI_NO_NORMALIZE=True\n')
            break

    if not updated:
        for i, line in enumerate(lines):
            if line.startswith('SRC_URI='):
                lines.insert(i + 1, s_variable_line)
                updated = True
                break

    with ebuild_path.open('w') as file:
        file.writelines(lines)

def update_manifest(ebuild_path):
    """Generate Gentoo Manifest file."""
    result = subprocess.run(['ebuild', ebuild_path, 'manifest'])
    if result.returncode != 0:
        raise ValueError("Manifest generation failed")

def process_ebuilds(dev_python_path):
    """
    Process all ebuild files in the dev-python directory.
    """
    dev_python_path = Path(dev_python_path)
    if not dev_python_path.is_dir():
        raise FileNotFoundError(f"{dev_python_path} is not a valid directory")

    for ebuild_path in dev_python_path.rglob("*.ebuild"):
        try:
            #print(f"Processing {ebuild_path}...")
             # Get tarball extension from SRC_URI
            tarball_extension = get_tarball_extension(ebuild_path)
            # Derive tarball name from ebuild name
            ebuild_name = ebuild_path.stem  # Get the ebuild file name without extension
            tarball_name = f"{ebuild_name}.gh{tarball_extension}"
            tarball_path = Path('/var/cache/distfiles') / tarball_name

            if not tarball_path.exists():
                print(f"Warning: Tarball {tarball_path} not found for {ebuild_path}")
                continue

            if tarball_extension == '.zip':
                top_level_folder = extract_top_level_folder_from_zip(tarball_path)
            else:
                top_level_folder = extract_tarball_folder(tarball_path)

            print(top_level_folder)
            update_ebuild(ebuild_path, top_level_folder[0], top_level_folder[1])
            update_manifest(ebuild_path)
        except Exception as e:
            print(f"Error processing {ebuild_path}: {e}")

def main():
    """
    Main function to process all ebuild files in the dev-python directory.
    """
    try:
        process_ebuilds("dev-python")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    main()