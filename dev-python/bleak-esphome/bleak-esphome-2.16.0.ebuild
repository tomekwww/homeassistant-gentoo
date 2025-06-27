# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Bleak backend of ESPHome"
HOMEPAGE="https://pypi.org/project/bleak-esphome/"
SRC_URI="https://files.pythonhosted.org/packages/7b/e1/1370d51e0315cf6455db4ae0912b10a756b52ec151c36c53778d0c080a10/bleak_esphome-2.16.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/bleak_esphome-2.16.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aioesphomeapi-30.1.0[${PYTHON_USEDEP}]
	>=dev-python/bleak-0.21.1[${PYTHON_USEDEP}]
	>=dev-python/bleak-retry-connector-3.8.0[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-data-tools-1.18.0[${PYTHON_USEDEP}]
	>=dev-python/habluetooth-3.42.0[${PYTHON_USEDEP}]
	>=dev-python/lru-dict-1.2.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
