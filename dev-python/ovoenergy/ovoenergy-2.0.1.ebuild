# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="OVO Energy"
HOMEPAGE="https://github.com/timmo001/ovoenergy"
SRC_URI="https://files.pythonhosted.org/packages/7c/e7/f9191ad2cf9c86c01adff0137c96c14bbb4e57db8c19aa0f7f2cff35cfc2/ovoenergy-2.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ovoenergy-2.0.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/typer-0.6.1[${PYTHON_USEDEP}]
"

src_prepare() {
    touch requirements.txt
    touch requirements_setup.txt
    echo -ne '\n[build-system]\nrequires = ["setuptools"]\nbuild-backend = "setuptools.build_meta"\n' >> pyproject.toml || die
    distutils-r1_src_prepare
}

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
