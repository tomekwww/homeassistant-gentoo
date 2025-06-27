# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Little api client for paperlessngx"
HOMEPAGE="https://pypi.org/project/pypaperless/"
SRC_URI="https://files.pythonhosted.org/packages/27/91/67116557a97285e478d7a47fda262860eb0f0bce272ecf0a67b22fa3da37/pypaperless-4.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pypaperless-4.1.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.16[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.20.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
