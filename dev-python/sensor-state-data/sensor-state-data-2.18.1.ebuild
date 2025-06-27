# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Models for storing and converting Sensor Data state"
HOMEPAGE="https://github.com/bluetooth-devices/sensor-state-data"
SRC_URI="https://files.pythonhosted.org/packages/0c/49/c103f258fd5b9beec7c64405720a58e7836aa0fdabfac021df81dffe6d91/sensor_state_data-2.18.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/sensor_state_data-2.18.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
