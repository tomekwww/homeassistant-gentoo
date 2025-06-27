# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="PythonASN1 is a simple ASN1 encoder and decoder for Python 27 and 35"
HOMEPAGE="https://github.com/andrivet/python-asn1"
SRC_URI="https://files.pythonhosted.org/packages/ce/b9/646aefd217b3a53f0b3de02006e16b2c454cfaa9ba606dae312f900a247e/asn1-3.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/asn1-3.1.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/enum-compat[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
