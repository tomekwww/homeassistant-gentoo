# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Unofficial python SDK for Brunt this package allows you to control your Brunt devices from code"
HOMEPAGE="https://github.com/eavanvalkenburg/brunt-api"
SRC_URI="https://files.pythonhosted.org/packages/3e/78/050066a1f560ddc99e7ed2ea144cc241e0735f24e58709898e544bacfd93/brunt-1.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/brunt-1.2.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
