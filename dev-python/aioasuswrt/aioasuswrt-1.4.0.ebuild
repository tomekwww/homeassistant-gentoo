# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Api wrapper for Asuswrt httpswwwasuscomASUSWRT"
HOMEPAGE="https://github.com/kennedyshead/aioasuswrt"
SRC_URI="https://files.pythonhosted.org/packages/97/e4/3abe75db55e5bbfd435ed8e7bfe4aeb628f74207a4543cc3d6e8913723d6/aioasuswrt-1.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioasuswrt-1.4.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/asyncssh[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
