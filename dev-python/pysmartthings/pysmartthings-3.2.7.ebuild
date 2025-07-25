# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for SmartThings"
HOMEPAGE="https://pypi.org/project/pysmartthings/"
SRC_URI="https://files.pythonhosted.org/packages/43/16/5b3e6d6e2b7e85cc4215061e354bb4d4ad510ff83e457af0e70f838fba21/pysmartthings-3.2.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysmartthings-3.2.7"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-sse-client2-0.3.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-sse-client2-0.4.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.11.0[${PYTHON_USEDEP}]
	<dev-python/mashumaro-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.10[${PYTHON_USEDEP}]
	<dev-python/orjson-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
