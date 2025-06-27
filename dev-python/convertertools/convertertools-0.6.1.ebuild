# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Tools for converting python data types"
HOMEPAGE="https://pypi.org/project/convertertools/"
SRC_URI="https://files.pythonhosted.org/packages/fb/25/dc809e43ec94a42497d95bf251018b524d1b8b8bcd35705acef2afafa832/convertertools-0.6.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/convertertools-0.6.1"

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
