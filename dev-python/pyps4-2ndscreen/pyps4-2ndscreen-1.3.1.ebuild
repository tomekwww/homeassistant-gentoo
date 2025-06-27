# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="PS4 2nd Screen Python Library"
HOMEPAGE="https://github.com/ktnrg45/pyps4-2ndscreen"
SRC_URI="https://files.pythonhosted.org/packages/f6/a2/57d7fc4eb36aae838e068ea26f297407257d4a972c8b5d4c019b7b95d93f/pyps4_2ndscreen-1.3.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyps4_2ndscreen-1.3.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.5.4[${PYTHON_USEDEP}]
	>=dev-python/click-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/construct-2.9.45[${PYTHON_USEDEP}]
	>=dev-python/pycryptodomex-3.7.2[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
