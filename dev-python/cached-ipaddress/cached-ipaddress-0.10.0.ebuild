# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Cache construction of ipaddress objects"
HOMEPAGE="https://pypi.org/project/cached-ipaddress/"
SRC_URI="https://files.pythonhosted.org/packages/54/1c/b1139184bba60887208992121df972f2d76d246437dc4bfc430845ac1eb8/cached_ipaddress-0.10.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/cached_ipaddress-0.10.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/propcache-0.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
