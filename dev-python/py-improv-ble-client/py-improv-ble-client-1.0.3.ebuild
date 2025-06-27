# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="API to provision devices which implement Improv via BLE"
HOMEPAGE="https://pypi.org/project/py-improv-ble-client/"
SRC_URI="https://files.pythonhosted.org/packages/aa/9c/2caa3f513793845f5aee052c62a85a4f8c405112b7b54d21010303466956/py-improv-ble-client-1.0.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/py-improv-ble-client-1.0.3"

LICENSE="MIT"
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
