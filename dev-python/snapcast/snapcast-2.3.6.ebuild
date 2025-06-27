# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Control Snapcast"
HOMEPAGE="https://github.com/happyleavesaoc/python-snapcast/"
SRC_URI="https://files.pythonhosted.org/packages/31/8c/d87c2c551f84d8488513eb43d426f30cb89b8b658321fe77d5376e718cfd/snapcast-2.3.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/snapcast-2.3.6"

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
