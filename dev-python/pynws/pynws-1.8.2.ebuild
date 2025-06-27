# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library to retrieve observations and forecasts from NWSNOAA"
HOMEPAGE="https://pypi.org/project/pynws/"
SRC_URI="https://files.pythonhosted.org/packages/6c/13/1d73ae2ce29a6c7f6fdfa9556df0911721c19204e46880a60b94c92a52d9/pynws-1.8.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pynws-1.8.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/metar[${PYTHON_USEDEP}]
	dev-python/yarl[${PYTHON_USEDEP}]
	dev-python/tenacity[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
