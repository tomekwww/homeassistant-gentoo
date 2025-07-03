# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Iskra devices interface"
HOMEPAGE="https://github.com/Iskramis/pyiskra"
SRC_URI="https://files.pythonhosted.org/packages/dd/98/6b636e0cb3bc7e7a434abf18168e3e56dbdc2d57257cc856b03729056c3d/pyiskra-0.1.21.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyiskra-0.1.21"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/pymodbus[${PYTHON_USEDEP}]
"

src_prepare() {
    sed -i '3i\build-backend = "setuptools.build_meta"\n' pyproject.toml || die
    distutils-r1_src_prepare
}

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
