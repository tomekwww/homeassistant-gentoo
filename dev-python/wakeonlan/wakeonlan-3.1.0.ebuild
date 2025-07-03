# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A small python module for wake on lan"
HOMEPAGE="https://github.com/remcohaszing/pywakeonlan"
SRC_URI="https://files.pythonhosted.org/packages/ec/98/b92125baeaf67b3a838bfdb4ac4e685c793ce2771686b10df44275e424a4/wakeonlan-3.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/wakeonlan-3.1.0"

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
