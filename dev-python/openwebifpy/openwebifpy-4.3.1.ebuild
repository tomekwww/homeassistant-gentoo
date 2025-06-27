# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Provides a python interface to interact with a device running OpenWebIf"
HOMEPAGE="https://pypi.org/project/openwebifpy/"
SRC_URI="https://files.pythonhosted.org/packages/9a/69/4f51def5ca65cbf9cbce2a10b4858ef481ef95ebce343b1a122a8511e909/openwebifpy-4.3.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/openwebifpy-4.3.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/yarl[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
