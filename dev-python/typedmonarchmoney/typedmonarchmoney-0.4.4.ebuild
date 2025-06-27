# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Typed wrapper around Monarch Money"
HOMEPAGE="https://pypi.org/project/typedmonarchmoney/"
SRC_URI="https://files.pythonhosted.org/packages/b8/85/2356f5f0ba93babbcb6d1b57eafeb91314278e4804ac863523a346c00fea/typedmonarchmoney-0.4.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/typedmonarchmoney-0.4.4"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/monarchmoney-0.2.0[${PYTHON_USEDEP}]
	>=dev-python/monarchmoney-0.1.13[${PYTHON_USEDEP}]
	>=dev-python/rich-10.1.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
