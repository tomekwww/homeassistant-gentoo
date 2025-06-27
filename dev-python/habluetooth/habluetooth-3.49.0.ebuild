# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="High availability Bluetooth"
HOMEPAGE="https://pypi.org/project/habluetooth/"
SRC_URI="https://files.pythonhosted.org/packages/0e/fc/3820b2ac4fe2c376b7da920f45129f4108c08ec535cf682e075823560d81/habluetooth-3.49.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/habluetooth-3.49.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/async-interrupt-1.1.1[${PYTHON_USEDEP}]
	>=dev-python/bleak-0.21.1[${PYTHON_USEDEP}]
	>=dev-python/bleak-retry-connector-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-adapters-0.16.1[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-auto-recovery-1.5.1[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-data-tools-1.28.0[${PYTHON_USEDEP}]
	>=dev-python/dbus-fast-2.30.2[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
