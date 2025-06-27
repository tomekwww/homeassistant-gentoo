# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python client to fetchreceive and parse uplink messages from The Thinks Network"
HOMEPAGE="https://pypi.org/project/ttn-client/"
SRC_URI="https://files.pythonhosted.org/packages/49/67/edde759999649df4099c3873ec9e533998891dba217f8817e3e6c7896351/ttn_client-1.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ttn_client-1.2.0"

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
