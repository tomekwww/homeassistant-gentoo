import sys
import requests
import json
import re
import os
import subprocess
import packaging
from packaging.requirements import Requirement
from packaging.specifiers import SpecifierSet
from packaging.version import Version, InvalidVersion
from packaging.version import parse

iuse = []

def is_version_equal(v1, v2):
    return v1.major == v2.major and v1.minor == v2.minor and v1.micro == v2.micro

def fetch_pypi_metadata(package_name, package_version, specifier_type):
    url = f"https://pypi.org/pypi/{package_name}/json"
    response = requests.get(url)
    if response.status_code != 200:
        raise Exception(f"Failed to fetch metadata for {package_name} from PyPI.")

    data = response.json()
    all_versions = []

    # Get all available versions
    for v in data.get('releases', {}).keys():
        try:
            vers = Version(v)
            if specifier_type == "~":
                all_versions.append(v)
            elif not vers.is_prerelease:
                all_versions.append(v)
        except InvalidVersion:
            continue

    if specifier_type == "~":
        filtered_versions = [v for v in all_versions if is_version_equal(packaging.version.parse(v), packaging.version.parse(package_version))]
    elif specifier_type == "<":
        filtered_versions = [v for v in all_versions if packaging.version.parse(v) < packaging.version.parse(package_version)]
    elif specifier_type == "<=":
        filtered_versions = [v for v in all_versions if packaging.version.parse(v) <= packaging.version.parse(package_version)]
    elif specifier_type == ">":
        filtered_versions = [v for v in all_versions if packaging.version.parse(v) > packaging.version.parse(package_version)]
    elif specifier_type == ">=":
        filtered_versions = [v for v in all_versions if packaging.version.parse(v) >= packaging.version.parse(package_version)]

    if filtered_versions:
        v = max(filtered_versions, key=packaging.version.parse)
        url = f"https://pypi.org/pypi/{package_name}/{v}/json"
    else:
        url = f"https://pypi.org/pypi/{package_name}/json"

    response = requests.get(url)
    if response.status_code != 200:
        raise Exception(f"Failed to fetch metadata for {package_name} from PyPI.")

    return response.json()


def parse_python_compat(requires_python):
    python_versions = []
    if requires_python:
        specifier_set = SpecifierSet(requires_python)
        # Check against a list of supported Python versions
        supported_versions = [
            '3.10', '3.11', '3.12', '3.13'
        ]
        for version in supported_versions:
            if Version(version) in specifier_set:
                major, minor = version.split('.')
                python_versions.append(f"{minor}")
    return python_versions

def remove_prerelease_identifiers(version_string, add):
        version = Version(version_string)
        # Construct the version string without pre-release information
        # Default to 0 for any missing components
        return f"{version.major + add[0]}.{version.minor + add[1]}.{version.micro + add[2]}"

def parse_atom(dist, use_flags, required_extras):
    if dist == 'airtouch4pyapi==1.0.5':
        return parse_atom('airtouch4pyapi==1.0.8', use_flags, required_extras)
    if dist == 'aenum>=3.1.11':
        return parse_atom('aenum<3.1.16,>=3.1.11', use_flags, required_extras)

    dependencies = []
    deps = []
    try:
        req = Requirement(dist)
        spec_operator = ''
        spec_version = ''

        if req.marker:
            if 'extra' in str(req.marker):
                if not any(marker in str(req.marker) for marker in required_extras):
                    return [dependencies, deps]

            if any(marker in str(req.marker) for marker in ['sys_platform', 'python_version', 'platform_system']):
                environment = {
                    'python_version': '3.13',
                    'platform_system': 'Linux',
                }
                if not req.marker.evaluate(environment):
                    return [dependencies, deps]

        print(req)
        spec_major = [0,0,0]
        if req.specifier:
            for spec in req.specifier:
                spec_operator = spec.operator
                if spec.operator == '!=':
                    continue
                if spec.version == '1000000000.0.0':
                    continue
                if spec.operator == '==' and spec.version.endswith('*'):
                    spec_operator = '<'
                    spec_major[str(spec.version).replace('*', '0').count('.') - 1] = 1
                elif spec.operator == '==':
                    spec_operator = '~'
                elif spec.operator == '~=':
                    spec_operator = '<'
                    spec_major[str(spec.version).count('.') - 1] = 1
                new_name = f"{req.name.lower().replace('.', '-').replace('_', '-')}"
                new_name = re.sub(r'-(\d+)$', r'_\1', new_name)
                spec_version = remove_prerelease_identifiers(str(spec.version).replace('*', '0'), spec_major)
                if not deps:
                    deps = [new_name, spec_version, spec_operator, req.extras]
                elif spec.operator == '<' or spec.operator == '<=':
                    deps = [new_name, spec_version, spec_operator, req.extras]
                if use_flags:
                    for use_flag in use_flags:
                        dependencies.append(f"\t{use_flag}? ( {spec_operator}dev-python/{new_name}-{spec_version}[${{PYTHON_USEDEP}}] )")
                else:
                    dependencies.append(f"\t{spec_operator}dev-python/{new_name}-{spec_version}[${{PYTHON_USEDEP}}]")
            return [dependencies, deps]
        else:
            new_name = f"{req.name.lower().replace('.', '-').replace('_', '-')}"
            new_name = re.sub(r'-(\d+)$', r'_\1', new_name)
            deps = [new_name, '0.0.0', '>=', []]
            dep_str = f"\tdev-python/{new_name}[${{PYTHON_USEDEP}}]"
            dependencies.append(dep_str)
            return [dependencies, deps]
    except Exception as e:
        print(f"Error parssing requirement '{dist}': {e}")

def parse_requires_dist(requires_dist, required_extras):
    dependencies = []
    deps = []
    if requires_dist:
        for dist in requires_dist:
            atom = parse_atom(dist, [], required_extras)
            dependencies.extend(atom[0])
            deps.append(atom[1])
    return [dependencies, deps]

def find_matching_license_file(license_string, license_dir="/var/db/repos/gentoo/licenses/"):
    try:
        # List all files in the license directory
        license_files = os.listdir(license_dir)
    except FileNotFoundError:
        print(f"Directory not found: {license_dir}")
        return 'BSD'

    # Find the file that matches the beginning of the license string
    for license_file in license_files:
        if license_string.startswith(license_file):
            return license_file

    return 'BSD'

def get_srcuri(url):
    if url.endswith('tar.gz'):
        return url + ' -> ${P}.gh.tar.gz'
    if url.endswith('tar.xz'):
        return url + ' -> ${P}.gh.tar.xz'
    if url.endswith('tar.bz2'):
        return url + ' -> ${P}.gh.tar.bz2'
    if url.endswith('zip'):
        return url + ' -> ${P}.gh.zip'

def convert_to_ebuild(metadata, required_extras):
    """Convert PyPI metadata to a simple Gentoo ebuild format."""
    info = metadata['info']
    package_name = info['name']
    version = info['version']
    homepage = info['home_page'] or info['project_url']
    urls = info['project_urls']
    repository = ''
    src_uri = ''
    if (info.get('home_page', '') or '').startswith('https://github.com/'):
        repository = info.get('home_page', '')
    if (info.get('project_url', '') or '').startswith('https://github.com/'):
        repository = info.get('project_url', '')
    if urls and (urls.get('Homepage', '') or '').startswith('https://github.com/'):
        repository = urls.get('Homepage', '')
    if urls and (urls.get('homepage', '') or '').startswith('https://github.com/'):
        repository = urls.get('homepage', '')
    if urls and (urls.get('Repository', '') or '').startswith('https://github.com/'):
        repository = urls.get('Repository', '')
    if urls and (urls.get('repository', '') or '').startswith('https://github.com/'):
        repository = urls.get('repository', '')
    if urls and (urls.get('source Code', '') or '').startswith('https://github.com/'):
        repository = urls.get('Source Code', '')
    if urls and (urls.get('Download', '') or '').startswith('https://github.com/'):
        src_uri = get_srcuri(urls.get('Download', ''))

    description = re.sub(r'[^a-zA-Z0-9 ]', '', (info.get('summary', '') or ''))
    license_ = find_matching_license_file((info.get('license', 'BSD') or 'BSD').split()[0])
    requires_python = info['requires_python']
    requires_dist = info.get('requires_dist', [])

    for url_entry in metadata['urls']:
        if url_entry['packagetype'] == 'sdist':
            if not 'win-amd64' in url_entry['url']:
                src_uri = get_srcuri(url_entry['url'])
                break
    if not src_uri:
        if repository:
            response = requests.get(f"{repository}/archive/refs/tags/v{version}.tar.gz")
            if response.ok:
                src_uri = f"{repository}/archive/refs/tags/v{version}.tar.gz -> ${{P}}.gh.tar.gz"
            response = requests.get(f"{repository}/archive/refs/tags/{version}.tar.gz")
            if response.ok:
                src_uri = f"{repository}/archive/refs/tags/{version}.tar.gz -> ${{P}}.gh.tar.gz"
        if not src_uri:
            if package_name == 'aioapcaccess':
                src_uri = f"https://github.com/yuxincs/aioapcaccess/archive/refs/tags/v{version}.tar.gz -> ${{P}}.gh.tar.gz"
            elif package_name == 'refoss-ha':
                src_uri = f"https://github.com/ashionky/refoss_ha/archive/refs/tags/v{version}.tar.gz -> ${{P}}.gh.tar.gz"
            elif package_name == 'pyoppleio-legacy':
                src_uri = 'https://github.com/tinysnake/python-oppleio-legacy/archive/refs/heads/main.zip -> ${P}.gh.zip'
            elif package_name == 'home-assistant-chip-clusters':
                src_uri = 'https://github.com/project-chip/connectedhomeip/archive/refs/tags/v1.4.0.0.tar.gz -> ${P}.gh.tar.gz'
            elif package_name == 'russound':
                src_uri = 'https://github.com/laf/russound/archive/refs/heads/master.zip -> ${P}.gh.zip'
            elif package_name == 'sensirion-ble':
                src_uri = f"https://github.com/akx/sensirion-ble/archive/refs/tags/v{version}.tar.gz -> ${{P}}.gh.tar.gz"
            elif package_name == 'tank-utility':
                src_uri = f"https://github.com/krismolendyke/tank-utility/archive/refs/tags/{version}.tar.gz -> ${{P}}.gh.tar.gz"
            elif package_name == 'wyoming':
                src_uri = f"https://github.com/OHF-Voice/wyoming/archive/refs/tags/{version}.tar.gz -> ${{P}}.gh.tar.gz"
            else:
                raise ValueError("src_uri can not be empty")
    python_compat = parse_python_compat(requires_python)
    if python_compat:
        python_compat_str = "python3_{"
        python_compat_str += python_compat[0]
        python_compat_str += '..13}'
    else:
        python_compat_str = 'python3_13'

    dependencies = parse_requires_dist(requires_dist, required_extras)
    dependencies_str = '\n'.join(dependencies[0])
    ebuild_content = f"""# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( {python_compat_str} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="{description}"
HOMEPAGE="{homepage}"
SRC_URI="{src_uri}"

LICENSE="{license_}"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${{PYTHON_DEPS}}
{dependencies_str}
\"
"""
    return [ebuild_content, dependencies[1]]

def generate_manifest(package_name, package_version):
    """Generate Gentoo Manifest file."""
    subprocess.run(['pkgdev', 'manifest', f"dev-python/{package_name}/{package_name}-{package_version}.ebuild"])


def generate_metadata_xml(metadata):
    """Convert PyPI metadata to a Gentoo metadata.xml."""
    info = metadata['info']
    package_name = info['name']
    version = info['version']
    description = (info.get('summary', '') or '').replace("&", " and ")
    author = re.sub(r'<[^>]*>', '', info.get('author', '') or '').strip()
    match = re.search(r'<(.*?)>', info.get('author_email', '') or '')
    if match:
        author_email = match.group(1)
    else:
        match = re.search(r'<(.*?)>', info.get('author', '') or '')
        if match:
            author_email = author_email = match.group(1)
        else:
            author_email = info.get('author_email', '') or ''
    urls = info['project_urls']
    if urls:
        bugs = urls.get('Bug Tracker', '') or urls.get('Bug Reports', '')
        repository = re.sub(r'https?://github\.com/', '', urls.get('Repository', '') or urls.get('Source Code', ''))
        homepage = info.get('home_page', '') or info.get('project_url', '') or urls.get('Homepage', '')
    else:
        bugs=''
        repository=''
        homepage=''

    metadata_content = f"""<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE pkgmetadata SYSTEM "https://www.gentoo.org/dtd/metadata.dtd">
<pkgmetadata>
\t<maintainer type="person">
\t\t<email>tomasz.m.wojna@gmail.com</email>
\t\t<name>Tomasz Wojna</name>
\t</maintainer>
\t<upstream>
\t\t<remote-id type="pypi">{package_name}</remote-id>
\t\t<remote-id type="github">{repository or 'unknown'}</remote-id>
\t\t<bugs-to>{bugs or 'unknown@example.com'}</bugs-to>
\t\t<maintainer status="unknown">
\t\t\t<email>{author_email}</email>
\t\t\t<name>{author}</name>
\t\t</maintainer>
\t</upstream>
\t<longdescription>
\t\t{description}
\t</longdescription>
</pkgmetadata>
"""
    return metadata_content

def save_metadata(package_name, metadata_content):
    """Save the metadata content to a file."""
    metadata_filename = f"dev-python/{package_name}/metadata.xml"
    with open(metadata_filename, 'w') as file:
        file.write(metadata_content)

def save_ebuild(package_name, version, ebuild_content):
    """Save the ebuild content to a file."""
    directory = f"dev-python/{package_name}"
    os.makedirs(directory, exist_ok=True)
    ebuild_filename = f"{directory}/{package_name}-{version}.ebuild"
    with open(ebuild_filename, 'w') as file:
        file.write(ebuild_content)

def get_package_versions(name, version, specifier):
    try:
        # Run the equery command
        result = subprocess.run(
            ['equery', 'list', '-p', '-o', '-F', '$cpv $repo $mask', f"{specifier}dev-python/{name}-{version}"],
            text=True,
            capture_output=True
        )

        if result.returncode != 0:
            # Exit code indicates an error
            return False
        else:
            # Capture the output
            output = result.stdout.strip().split('\n')
            if output[0].startswith("!!!"):
                return False
            for line in output:
                if line.endswith('-'):
                    continue
                parts = line.split()
                if parts[1] in ['gentoo', 'homeassistant-gentoo']:
                    result = subprocess.run(
                        ['equery', 'uses', f"{parts[0]}"],
                        text=True,
                        capture_output=True
                    )
                    if result.returncode != 0:
                        print(result.stdout)
                        return False
                    else:
                        if 'python_targets_python3_13' in result.stdout:
                            return True
            return False

    except subprocess.CalledProcessError as e:
        print(f"An error occurred while running the command: {e}")
        return None, None

def create_ebuild(package_name, package_version, package_specifier, required_extras):
    exists = get_package_versions(package_name, package_version, package_specifier)
    if exists:
        return
    metadata = fetch_pypi_metadata(package_name, package_version, package_specifier)
    version = remove_prerelease_identifiers(metadata['info']['version'], [0, 0, 0])
    e = convert_to_ebuild(metadata, required_extras)
    ebuild_content = e[0]
    dependencies = e[1]
    save_ebuild(package_name, version, ebuild_content)
    metadata_content = generate_metadata_xml(metadata)
    save_metadata(package_name, metadata_content)
    generate_manifest(package_name, version)
    for d in dependencies:
        if d:
            print(d)
            create_ebuild(d[0], d[1], d[2], d[3])

def download_file(url):
    """Download the file from the given URL."""
    response = requests.get(url)
    response.raise_for_status()  # Raise an exception for HTTP errors
    return response.text

def convert_to_gentoo_atom(lines):
    """Convert package constraints to Gentoo atom format."""
    gentoo_atoms = []
    use_flags = []
    for line in lines:
        line = line.strip()
        if not line  or line.startswith('-r'):
            continue  # Skip empty lines and comments
        elif line.startswith('# homeassistant.components.'):
            use_flag = line[len('# homeassistant.components.'):]
            use_flags.append(use_flag)
            if f"{use_flag}" not in iuse:
                iuse.append(f"{use_flag}")
            continue
        elif line.startswith('#'):
            continue  # Skip empty lines and comments
        gentoo_atoms.append(parse_atom(line, use_flags, []))
        use_flags = []
    return gentoo_atoms

def write_package_constraints(version):
    url = f"https://raw.githubusercontent.com/home-assistant/core/{version}/homeassistant/package_constraints.txt"
    rdeps = f"""# Home Assistant Core dependencies
# from package_constraints.txt
RDEPEND=\"${{RDEPEND}}
"""
    deps = []
    try:
        file_content = download_file(url)
        lines = file_content.splitlines()
        gentoo_atoms = convert_to_gentoo_atom(lines)
        for atom in gentoo_atoms:
            for a in atom[0]:
                rdeps += a + '\n'
            if atom[1]:
                deps.append(atom[1])
        rdeps += '"\n'
        return [rdeps, deps]

    except requests.HTTPError as e:
        print(f"HTTP error occurred: {e}")
    except Exception as e:
        print(f"An error occurred: {e}")

def write_homeassistant_ebuild(version):
    return f"""# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi readme.gentoo-r1 systemd

DESCRIPTION="Open-source home automation platform running on Python."
HOMEPAGE="https://home-assistant.io/"
SRC_URI="https://github.com/home-assistant/core/archive/{version}.tar.gz -> ${{P}}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
"""

def write_use_dependiecies(version):
    url = f"https://raw.githubusercontent.com/home-assistant/core/{version}/requirements_all.txt"
    rdeps = f"""# Module requirements from useflags
RDEPEND=\"${{RDEPEND}}
"""
    deps = []
    try:
        file_content = download_file(url)
        lines = file_content.splitlines()
        gentoo_atoms = convert_to_gentoo_atom(lines)
        for atom in gentoo_atoms:
            for a in atom[0]:
                rdeps += a + '\n'
            if atom[1]:
                deps.append(atom[1])
        rdeps += '"\n'
        return [rdeps, deps]

    except requests.HTTPError as e:
        print(f"HTTP error occurred: {e}")
    except Exception as e:
        print(f"An error occurred: {e}")

def write_rdepend():

    return f"""RESTRICT="!test? ( test )"

# external deps
RDEPEND="${{PYTHON_DEPS}}
	acct-group/${{PN}}
	acct-user/${{PN}}
	app-admin/logrotate"
#	dev-db/sqlite
#	dev-libs/libfastjson
#	dev-libs/xerces-c"\n
"""

def write_body():
    return f"""\nINSTALL_DIR="/opt/${{PN}}"

DISABLE_AUTOFORMATTING=1
#DOC_CONTENTS="
#The HA interface listens on port 8123
#hass configuration is in: /etc/${{PN}}
#daemon command line arguments are configured in: /etc/conf.d/${{PN}}
#logging is to: /var/log/${{PN}}/{{server,errors,stdout}}.log
#The sqlite db is by default in: /etc/${{PN}}
#support at https://git.edevau.net/onkelbeh/HomeAssistantRepository
#"

#DOCS="README.rst"

python_install_all() {{
#	dodoc ${{DOCS}}
	distutils-r1_python_install_all
	keepdir "$INSTALL_DIR"
	keepdir "/etc/${{PN}}"
	fowners -R "${{PN}}:${{PN}}" "/etc/${{PN}}"
	keepdir "/var/log/${{PN}}"
	fowners -R "${{PN}}:${{PN}}" "/var/log/${{PN}}"
	newconfd "${{FILESDIR}}/${{PN}}.conf.d" "${{PN}}"
	newinitd "${{FILESDIR}}/${{PN}}.init.d" "${{PN}}"
	use systemd && systemd_dounit "${{FILESDIR}}/${{PN}}.service"
	dobin "${{FILESDIR}}/hasstest"
	if use socat ; then
		newinitd "${{FILESDIR}}/socat-zwave.init.d" "socat-zwave"
		sed -i -e 's/# need socat-zwave/need socat-zwave/g' "${{D}}/etc/init.d/${{PN}}" || die
	fi
	if use mqtt ; then
		sed -i -e 's/# need mosquitto/need mosquitto/g' "${{D}}/etc/init.d/${{PN}}" || die
	fi
	insinto /etc/logrotate.d
	newins "${{FILESDIR}}/${{PN}}.logrotate" "${{PN}}"
	readme.gentoo_create_doc
}}

pkg_postinst() {{
	readme.gentoo_print_elog
}}

distutils_enable_tests pytest
"""

def write_ha_metadata():
    version = sys.argv[1]
    file_name = f"app-misc/homeassistant/metadata.xml"
    with open(file_name, 'w') as file:
        file.write(f"""<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE pkgmetadata SYSTEM \"http://www.gentoo.org/dtd/metadata.dtd\">
<pkgmetadata>
	<maintainer type=\"person\">
		<email>tomasz.m.wojna@gmail.com</email>
		<name>Tomasz Wojna</name>
	</maintainer>
	<upstream>
		<remote-id type=\"pypi\">home-assistant</remote-id>
		<remote-id type=\"github\">home-assistant/core</remote-id>
		<doc>https://www.home-assistant.io/docs/</doc>
		<maintainer>
			<email>hello@home-assistant.io</email>
			<name>The Home Assistant Authors</name>
		</maintainer>
	</upstream>
	<use>
""")
        for use_flag in iuse:
            file.write(f"\t\t<flag name=\"{use_flag[1:]}\"></flag>\n")
        file.write(f"</use>\n</pkgmetadata>\n")

def get_iuse():
    return " ".join(map(str, sorted(iuse)))

def main():
    version = sys.argv[1]
    v = remove_prerelease_identifiers(version, [0, 0, 0])
    file_name = f"app-misc/homeassistant/homeassistant-{v}.ebuild"
    rdeps = []
    with open(file_name, 'w') as file:
        file.write(write_homeassistant_ebuild(version))
        use_deps = write_use_dependiecies(version)
        deps = write_package_constraints(version)
        iuse = get_iuse()
        file.write(f"IUSE=\"{iuse}\"\n")
        file.write(write_rdepend())
        file.write(deps[0])
        rdeps.extend(deps[1])
        file.write(use_deps[0])
        rdeps.extend(use_deps[1])
        file.write(write_body())

    write_ha_metadata()
    subprocess.run(['pkgdev', 'manifest', file_name])
    start = False
    for d in rdeps:
        if d[0] == 'wyoming':
            start = True
        if start:
            print(d)
            create_ebuild(d[0], d[1], d[2], d[3])

if __name__ == "__main__":
    main()