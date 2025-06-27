# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client library for the Habitica API"
HOMEPAGE="https://pypi.org/project/Habiticalib/"
SRC_URI="https://files.pythonhosted.org/packages/cf/d4/bbb30a3b08d3e668e28c3f7e3a96761cd09cf61c2e3d5fae8a27a0853df2/habiticalib-0.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/habiticalib-0.4.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.9.0[${PYTHON_USEDEP}]
	<dev-python/mashumaro-4.13.0[${PYTHON_USEDEP}]
	<dev-python/orjson-4.10.0[${PYTHON_USEDEP}]
	<dev-python/pillow-12.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
