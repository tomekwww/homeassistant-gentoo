# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for accessing BleBox smart home devices"
HOMEPAGE="https://github.com/blebox/blebox_uniapi"
SRC_URI="https://files.pythonhosted.org/packages/2a/21/e4b93f2edc766ca9ae90353091e23403b7415edc0f92ff016fd1d055c5f3/blebox_uniapi-2.5.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/blebox_uniapi-2.5.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>dev-python/jmespath-1.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
