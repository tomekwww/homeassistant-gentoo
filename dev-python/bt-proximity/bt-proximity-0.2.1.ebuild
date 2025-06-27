# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Allows for querying of the RSSI values for nearby devices using pybluez Ported to Python 3 based on httpsgithubcomewenchoubluetoothproximity"
HOMEPAGE="https://github.com/FrederikBolding/bluetooth-proximity"
SRC_URI="https://files.pythonhosted.org/packages/00/fc/0dd534e55857af29c3f1f2d54f6a0d508cbe69e5ec2124ed238d1dfecf04/bt_proximity-0.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/bt_proximity-0.2.1"

LICENSE="BSD"
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
