# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Google Spreadsheets Python API"
HOMEPAGE="https://github.com/burnash/gspread"
SRC_URI="https://files.pythonhosted.org/packages/a3/d3/e5c9aeca58be0e63c8147fbb0c734e69ec76d19cd65bc0ed12858e89ef87/gspread-5.5.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/gspread-5.5.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/google-auth-1.12.0[${PYTHON_USEDEP}]
	>=dev-python/google-auth-oauthlib-0.4.1[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
