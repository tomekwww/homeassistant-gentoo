# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Simple Python API for 17tracknet"
HOMEPAGE="https://pypi.org/project/pyseventeentrack/"
SRC_URI="https://files.pythonhosted.org/packages/fd/69/321a3251ff4a385e0c28714d2adc6d551b5ed972d4fcfa107cee51ced177/pyseventeentrack-1.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyseventeentrack-1.1.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.5[${PYTHON_USEDEP}]
	>=dev-python/attrs-19.3.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-45.0.3[${PYTHON_USEDEP}]
	>=dev-python/pytz-2021.1.0[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
