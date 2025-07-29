# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async UPnP Client"
HOMEPAGE="https://pypi.org/project/async-upnp-client/"
SRC_URI="https://files.pythonhosted.org/packages/fc/d1/a36e18d84a29fdd11d57ebbc1d5b09c248f3bec341ed7971aed8f2413184/async_upnp_client-0.45.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/async_upnp_client-0.45.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
	<dev-python/async-timeout-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/defusedxml-0.6.0[${PYTHON_USEDEP}]
	<dev-python/python-didl-lite-1.5.0[${PYTHON_USEDEP}]
	>=dev-python/voluptuous-0.15.2[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
