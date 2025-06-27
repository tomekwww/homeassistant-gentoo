# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Find the vendor for a given MAC address"
HOMEPAGE="https://github.com/bauerj/mac_vendor_lookup"
SRC_URI="https://files.pythonhosted.org/packages/77/7c/2a5ae05d5cdec7f9b9a31d968914da17e716684505b052fd79cf6b30e447/mac_vendor_lookup-0.1.12.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/mac_vendor_lookup-0.1.12"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiofiles[${PYTHON_USEDEP}]
	dev-python/aiohttp[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
