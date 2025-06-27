# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Interface with Rejseplanen API"
HOMEPAGE="https://github.com/tomatpasser/python-rejseplanen"
SRC_URI="https://files.pythonhosted.org/packages/8e/f6/ed06126ea59ca0bcd9054b5aabd426afe5d22475b0ca600c464231b73130/rjpl-0.3.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/rjpl-0.3.6"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.9.1[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
