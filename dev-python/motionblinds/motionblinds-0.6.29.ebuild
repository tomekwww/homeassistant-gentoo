# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for interfacing with Motion Blinds"
HOMEPAGE="https://github.com/starkillerOG/motion-blinds"
SRC_URI="https://files.pythonhosted.org/packages/86/d4/4d5f6cddcc8f695ab64670280783883f85fb4624898c42f5e691acfffc07/motionblinds-0.6.29.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/motionblinds-0.6.29"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pycryptodomex[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
