# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Client for IBM Watson IoT Platform"
HOMEPAGE="https://github.com/ibm-watson-iot/iot-python"
SRC_URI="https://files.pythonhosted.org/packages/a3/db/68e2127bbd56004f2b59f00b62e7163cf407b5bd23da411289633b785e07/ibmiotf-0.3.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ibmiotf-0.3.4"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
