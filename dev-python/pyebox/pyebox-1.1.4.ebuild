# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Get your EBox consumption wwwweboxca"
HOMEPAGE="http://github.com/titilambert/pyebox"
SRC_URI="https://files.pythonhosted.org/packages/42/cb/75893f698038b46798dea6d237c09401479981308e1d759f2f4fd5700b37/pyebox-1.1.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyebox-1.1.4"

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
