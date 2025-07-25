# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for WMS WebControl pro API"
HOMEPAGE="https://pypi.org/project/pywmspro/"
SRC_URI="https://files.pythonhosted.org/packages/34/ba/2a45d7a7afd54b4d6962600cfb8018b89a3e8537686c28c6b3fd947913bb/pywmspro-0.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pywmspro-0.3.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.18[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
