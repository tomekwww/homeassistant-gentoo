# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Calculations for the position of the sun and moon"
HOMEPAGE="https://github.com/sffjunkie/astral"
SRC_URI="https://files.pythonhosted.org/packages/ad/c3/76dfe55a68c48a1a6f3d2eeab2793ebffa9db8adfba82774a7e0f5f43980/astral-2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/astral-2.2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pytz[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
