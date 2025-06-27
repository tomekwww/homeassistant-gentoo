# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for Salda Smarty Modbus TCP"
HOMEPAGE="https://github.com/martinssipenko/pysmarty2"
SRC_URI="https://files.pythonhosted.org/packages/da/26/764ba9f6ea575d96abc8081763f4d3357bb4829b7d8526107804cee040f0/pysmarty2-0.10.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysmarty2-0.10.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/pymodbus-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/pymodbus-3.6.9[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
