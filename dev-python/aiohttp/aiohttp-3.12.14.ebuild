# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async http clientserver framework asyncio"
HOMEPAGE="https://github.com/aio-libs/aiohttp"
SRC_URI="https://files.pythonhosted.org/packages/e6/0b/e39ad954107ebf213a2325038a3e7a506be3d98e1435e1f82086eec4cde2/aiohttp-3.12.14.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiohttp-3.12.14"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohappyeyeballs-2.5.0[${PYTHON_USEDEP}]
	>=dev-python/aiosignal-1.4.0[${PYTHON_USEDEP}]
	>=dev-python/attrs-17.3.0[${PYTHON_USEDEP}]
	>=dev-python/frozenlist-1.1.1[${PYTHON_USEDEP}]
	>=dev-python/multidict-4.5.0[${PYTHON_USEDEP}]
	<dev-python/multidict-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/propcache-0.2.0[${PYTHON_USEDEP}]
	<dev-python/yarl-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.17.0[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
