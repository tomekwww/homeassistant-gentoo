# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Nob Hub  Nob Energy Control TCPIP Interface"
HOMEPAGE="https://github.com/echoromeo/pynobo"
SRC_URI="https://files.pythonhosted.org/packages/8f/9c/8ba493dfa6fa58eefc8dd3a1fdeb8f388d57d9440b3258010c152d26890a/pynobo-1.8.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pynobo-1.8.1"

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
