# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=flit
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Swing2Sleep Smarla API"
HOMEPAGE="https://pypi.org/project/pysmarlaapi/"
SRC_URI="https://files.pythonhosted.org/packages/b5/fe/49953895778aac71ffa5eed8ffcf483bc16fb6224947903fe74a28e10143/pysmarlaapi-0.9.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysmarlaapi-0.9.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.11.0[${PYTHON_USEDEP}]
	<dev-python/jsonpickle-4.1.0[${PYTHON_USEDEP}]
	<dev-python/pysignalr-1.2.0[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
