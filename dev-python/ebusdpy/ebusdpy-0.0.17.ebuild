# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="eBusd python integration library"
HOMEPAGE="https://github.com/CrazYoshi/ebusdpy"
SRC_URI="https://files.pythonhosted.org/packages/7d/cb/833e7592f9195dd0bd10c665d9e3421ca9ad431bb27a9b943c744c84df19/ebusdpy-0.0.17.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ebusdpy-0.0.17"

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
