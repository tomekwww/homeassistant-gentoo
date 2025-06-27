# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Controls ProgettiHWSW relay boards"
HOMEPAGE="http://github.com/ardaseremet/progettihwsw"
SRC_URI="https://files.pythonhosted.org/packages/26/d2/df7b36d9f27e5f576a88c7787804b24ea23297907df0e4a9b9a7e8d5ff14/ProgettiHWSW-0.1.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ProgettiHWSW-0.1.3"

LICENSE="MIT"
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
