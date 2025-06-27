# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Lightweight Python module to discover and control WeMo devices"
HOMEPAGE="https://github.com/pywemo/pywemo"
SRC_URI="https://files.pythonhosted.org/packages/0f/4f/5980c5c82452fca0164a1f94b29d671f20d1e8990d8ae4dd066250fde9ac/pywemo-1.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pywemo-1.4.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/ifaddr-0.1.0[${PYTHON_USEDEP}]
	>=dev-python/lxml-4.6.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/urllib3-1.26.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
