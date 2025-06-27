# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for Yale Access formerly August Smart Lock and Doorbell"
HOMEPAGE="https://github.com/bdraco/yalexs"
SRC_URI="https://files.pythonhosted.org/packages/93/d8/cfaf8e428215f0c44af93f82184a501100694d62e68939f9320d493a5a47/yalexs-8.10.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/yalexs-8.10.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiofiles-23.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.10.5[${PYTHON_USEDEP}]
	>=dev-python/ciso8601-2.1.3[${PYTHON_USEDEP}]
	>=dev-python/freenub-0.1.0[${PYTHON_USEDEP}]
	>=dev-python/propcache-0.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-2.8.0[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.9.0[${PYTHON_USEDEP}]
	>=dev-python/python-socketio-5.11.3[${PYTHON_USEDEP}]
	>=dev-python/requests-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.5.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
