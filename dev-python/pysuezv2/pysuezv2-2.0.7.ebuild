# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Get your water consumption data from your Suez account wwwtoutsurmoneaufr or wwweauolivetfr"
HOMEPAGE="https://pypi.org/project/pysuezV2/"
SRC_URI="https://files.pythonhosted.org/packages/6c/29/03e6c20d1971f6c5076f96fcf1e4e210f1e14bc46646d3f75925fd073bca/pysuezv2-2.0.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysuezv2-2.0.7"

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
