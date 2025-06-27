# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for TPLink Kasa and Tapo devices"
HOMEPAGE="https://pypi.org/project/python-kasa/"
SRC_URI="https://files.pythonhosted.org/packages/09/44/b3c88bb2560c55e57078aed1777ead1b60981e6d852c9d8b9c7351bd5c6e/python_kasa-0.10.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python_kasa-0.10.2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/asyncclick-8.1.7[${PYTHON_USEDEP}]
	>=dev-python/cryptography-1.9.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.14.0[${PYTHON_USEDEP}]
	>=dev-python/kasa-crypt-0.2.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.1[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
