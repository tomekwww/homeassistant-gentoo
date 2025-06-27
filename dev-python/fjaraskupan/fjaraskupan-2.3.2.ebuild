# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python library for speaking to fjrskupan"
HOMEPAGE="https://github.com/elupus/fjaraskupan"
SRC_URI="https://files.pythonhosted.org/packages/65/90/ba02e996862d7f6bf8a413a908820624d81a0c46cdad6a9f484cb1df113c/fjaraskupan-2.3.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/fjaraskupan-2.3.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bleak-0.19.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
