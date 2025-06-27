# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for the OASA Telematics API"
HOMEPAGE="https://github.com/panosmz/oasatelematics"
SRC_URI="https://files.pythonhosted.org/packages/40/0e/65cb94d9f8cf8c737bbb765825506511708ee03c0168f26232329b2ce217/oasatelematics-0.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/oasatelematics-0.3"

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
