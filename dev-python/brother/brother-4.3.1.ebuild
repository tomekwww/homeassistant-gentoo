# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for getting data from Brother laser and inkjet printers via SNMP"
HOMEPAGE="https://github.com/bieniu/brother"
SRC_URI="https://files.pythonhosted.org/packages/c1/d1/f92b8281c8c7a22d811d7dda004d6bd6602b9c1184957f2c26516c5e7a92/brother-4.3.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/brother-4.3.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/dacite-1.7.0[${PYTHON_USEDEP}]
	<dev-python/pysnmp-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/pysnmp-6.2.6[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
