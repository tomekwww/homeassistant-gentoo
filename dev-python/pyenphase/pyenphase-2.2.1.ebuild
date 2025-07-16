# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to control enphase envoy"
HOMEPAGE="https://pypi.org/project/pyenphase/"
SRC_URI="https://files.pythonhosted.org/packages/e5/0a/00450f479d51f310bf5e020c56203657f644873af3535748ca076716e002/pyenphase-2.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyenphase-2.2.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.12.8[${PYTHON_USEDEP}]
	>=dev-python/awesomeversion-22.9.0[${PYTHON_USEDEP}]
	>=dev-python/envoy-utils-0.0.1[${PYTHON_USEDEP}]
	>=dev-python/lxml-4.9.2[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.10.0[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-2.7.0[${PYTHON_USEDEP}]
	<dev-python/tenacity-10.0.0[${PYTHON_USEDEP}]
	>=dev-python/tenacity-8.2.2[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
