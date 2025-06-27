# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="SDK for Niko Home Control"
HOMEPAGE="https://github.com/vandeurenglenn/nhc"
SRC_URI="https://files.pythonhosted.org/packages/e8/7f/9d8333f618231741ea2d0163f2b771020343a89e15826a0df0c079a322df/nhc-0.4.12.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/nhc-0.4.12"

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
