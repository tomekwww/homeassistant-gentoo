# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python wrapper of the wsdotwagov APIs"
HOMEPAGE="https://pypi.org/project/wsdot/"
SRC_URI="https://files.pythonhosted.org/packages/4d/38/530d68ebd8188006f85d918fd74db178b5f0bf1e759a6702065c56e78f76/wsdot-0.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/wsdot-0.0.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/pydantic[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
