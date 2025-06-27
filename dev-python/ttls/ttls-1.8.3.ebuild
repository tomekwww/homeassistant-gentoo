# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Twinkly Twinkly Little Star"
HOMEPAGE="https://github.com/jschlyter/ttls"
SRC_URI="https://files.pythonhosted.org/packages/af/af/ab15dbece80c7eff4336bd73548d0403fa0e09e3f2ee834654c5e548820a/ttls-1.8.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ttls-1.8.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/colour-0.2.0[${PYTHON_USEDEP}]
	>=dev-python/colour-0.1.5[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.5[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
