# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to parse Dutch Smart Meter Requirements DSMR"
HOMEPAGE="https://github.com/ndokter/dsmr_parser"
SRC_URI="https://github.com/ndokter/dsmr_parser/archive/refs/tags/v1.4.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/dsmr_parser-1.4.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyserial-3.0.0[${PYTHON_USEDEP}]
	<dev-python/pyserial-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyserial-asyncio-fast-0.11.0[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	~dev-python/tailer-0.4.1[${PYTHON_USEDEP}]
	~dev-python/dlms-cosem-21.3.2[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
