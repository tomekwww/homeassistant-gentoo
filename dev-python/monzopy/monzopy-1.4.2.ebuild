# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A simple async python wrapper for the Monzo API used primarily by the Monzo Home Assistant integration"
HOMEPAGE="https://pypi.org/project/monzopy/"
SRC_URI="https://files.pythonhosted.org/packages/90/fd/2d913103ecf2d2e0eb9035fc52b4969949d1780bad6f12b17067ba29d0b5/monzopy-1.4.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/monzopy-1.4.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
