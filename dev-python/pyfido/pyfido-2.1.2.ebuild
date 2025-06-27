# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Get your Fido consumption wwwwfidoca"
HOMEPAGE="http://github.com/titilambert/pyfido"
SRC_URI="https://files.pythonhosted.org/packages/fb/02/3ed7f9e005cb71430a3539a59d8eac76c1a823641ff2facced445d6abc33/pyfido-2.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyfido-2.1.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
