# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for communicating with UniFi Network Controller API"
HOMEPAGE="https://pypi.org/project/aiounifi/"
SRC_URI="https://files.pythonhosted.org/packages/98/fe/fbc3d80b52077f3eaea2b1aa584f1ed1a7ae874a29b73b8b4625966cbb77/aiounifi-83.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiounifi-83"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
	>dev-python/orjson-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/segno-1.5.2[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
