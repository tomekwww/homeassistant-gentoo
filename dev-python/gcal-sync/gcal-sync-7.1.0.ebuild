# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python library for syncing Google Calendar to local storage"
HOMEPAGE="https://github.com/allenporter/gcal_sync"
SRC_URI="https://files.pythonhosted.org/packages/f9/49/76295d6a055cc7b6409688e613f2c74a2670f5570d306754ada407778339/gcal_sync-7.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/gcal_sync-7.1.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
	>=dev-python/ical-8.3.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-2.10.4[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
