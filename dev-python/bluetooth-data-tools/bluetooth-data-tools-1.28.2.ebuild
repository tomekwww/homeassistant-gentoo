# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Tools for converting bluetooth data and packets"
HOMEPAGE="https://pypi.org/project/bluetooth-data-tools/"
SRC_URI="https://files.pythonhosted.org/packages/d9/45/39aca7dcbeff6727af3d4675ad88a20b92390d72c1c291a870f9756ffdce/bluetooth_data_tools-1.28.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/bluetooth_data_tools-1.28.2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cryptography-41.0.3[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
