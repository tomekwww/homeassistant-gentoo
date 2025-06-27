# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="The geodesic routines from GeographicLib"
HOMEPAGE="https://geographiclib.sourceforge.io/Python/2.0"
SRC_URI="https://files.pythonhosted.org/packages/96/cd/90271fd195d79a9c2af0ca21632b297a6cc3e852e0413a2e4519e67be213/geographiclib-2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/geographiclib-2.0"

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
