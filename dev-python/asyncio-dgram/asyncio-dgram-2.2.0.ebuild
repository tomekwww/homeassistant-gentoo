# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Higher level Datagram support for Asyncio"
HOMEPAGE="https://github.com/jsbronder/asyncio-dgram"
SRC_URI="https://files.pythonhosted.org/packages/34/6b/7c3e984ef144c2a034bd7c881f2ae0516df8e8f845909f757a3ae04e5532/asyncio-dgram-2.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/asyncio-dgram-2.2.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/setuptools[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
