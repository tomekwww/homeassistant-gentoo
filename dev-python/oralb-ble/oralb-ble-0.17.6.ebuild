# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Bluetooth library for Oral B devices"
HOMEPAGE="https://github.com/Bluetooth-Devices/oralb-ble"
SRC_URI="https://files.pythonhosted.org/packages/76/6c/6f8e2af42b98d989f0eaa53fbee85aef66191584de6c34d63492f6ba22eb/oralb_ble-0.17.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/oralb_ble-0.17.6"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bleak-0.19.2[${PYTHON_USEDEP}]
	>=dev-python/bleak-retry-connector-2.13.0[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-data-tools-0.1.2[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-sensor-state-data-1.6.0[${PYTHON_USEDEP}]
	>=dev-python/home-assistant-bluetooth-1.6.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
