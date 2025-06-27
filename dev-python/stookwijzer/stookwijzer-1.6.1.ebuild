# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Stookwijzer package"
HOMEPAGE="https://github.com/fwestenberg/stookwijzer"
SRC_URI="https://files.pythonhosted.org/packages/2d/2a/19f36aaec5fc5e50ab8c4a507a05c894f5bfc7c681c4454bc91ae36cc828/stookwijzer-1.6.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/stookwijzer-1.6.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
