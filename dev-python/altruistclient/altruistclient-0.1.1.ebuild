# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async library for discovering and fetching data from Altruist sensors"
HOMEPAGE="https://github.com/LoSk-p/altruistclient"
SRC_URI="https://files.pythonhosted.org/packages/a5/53/1cf3fb9b54b58ce0cd8108d1baa86f413447a62b689d6672c11e94e24445/altruistclient-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/altruistclient-0.1.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.11.0[${PYTHON_USEDEP}]
	<dev-python/zeroconf-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.143.0[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
