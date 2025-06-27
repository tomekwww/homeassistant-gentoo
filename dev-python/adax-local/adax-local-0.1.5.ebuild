# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python3 library to communicate with Adax"
HOMEPAGE="https://github.com/Danielhiversen/pyAdaxLocal"
SRC_URI="https://files.pythonhosted.org/packages/17/88/6874d37fdd0b92533db5e40a1e9b12d16e8e95deb7f6a3002de729e4d91b/Adax-local-0.1.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/Adax-local-0.1.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.6[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-1.4.0[${PYTHON_USEDEP}]
	dev-python/bleak[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
