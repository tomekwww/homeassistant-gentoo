# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A package to access meteorological data from Environment Canada"
HOMEPAGE="https://pypi.org/project/env-canada/"
SRC_URI="https://files.pythonhosted.org/packages/2d/46/0982a10616716915b918bae5ef2376ae449e3a79868c1e317c068ca4b05e/env_canada-0.11.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/env_canada-0.11.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/geopy-2.3.0[${PYTHON_USEDEP}]
	>=dev-python/imageio-2.28.0[${PYTHON_USEDEP}]
	>=dev-python/lxml-5.3.0[${PYTHON_USEDEP}]
	>=dev-python/numpy-1.22.2[${PYTHON_USEDEP}]
	>=dev-python/pandas-2.2.3[${PYTHON_USEDEP}]
	>=dev-python/pillow-10.0.1[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.9.0[${PYTHON_USEDEP}]
	>=dev-python/voluptuous-0.15.2[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
