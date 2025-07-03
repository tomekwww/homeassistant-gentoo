# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/airtouch5py/"
SRC_URI="https://files.pythonhosted.org/packages/ea/6d/af59a7f86e04a763867fc4378225726077ff4492e7b300938e90e2bd815c/airtouch5py-0.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/airtouch5py-0.3.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bitarray-3.4.2[${PYTHON_USEDEP}]
	<dev-python/bitarray-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/crc-7.1.0[${PYTHON_USEDEP}]
	<dev-python/crc-8.0.0[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
