# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="aiolifx light effects"
HOMEPAGE="https://github.com/amelchio/aiolifx_effects"
SRC_URI="https://files.pythonhosted.org/packages/e7/66/036dc2c09899731185a58faf7537e6ac9bf51af120240eac8e2bc78d262c/aiolifx_effects-0.3.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiolifx_effects-0.3.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiolifx-0.8.6[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
