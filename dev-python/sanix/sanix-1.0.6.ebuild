# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for getting measurements data from Sanix devices"
HOMEPAGE="https://github.com/tomaszsluszniak/sanix_py"
SRC_URI="https://files.pythonhosted.org/packages/9d/fd/c9e4a9943f900b61b44d86201080142b92534cccdac1393ca825b67c5fe9/sanix-1.0.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/sanix-1.0.6"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
