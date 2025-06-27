# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Parser for iBeacon devices"
HOMEPAGE="https://github.com/bluetooth-devices/ibeacon-ble"
SRC_URI="https://files.pythonhosted.org/packages/2c/f7/7f078410bb2f9e9bd768be4aa54365210b0c39f0cd3040188f433d9e4e51/ibeacon_ble-1.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ibeacon_ble-1.2.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiooui-0.1.1[${PYTHON_USEDEP}]
	>=dev-python/home-assistant-bluetooth-1.3.0[${PYTHON_USEDEP}]
	>=dev-python/mac-vendor-lookup-0.1.11[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
