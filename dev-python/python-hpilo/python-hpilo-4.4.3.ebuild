# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="iLO automation from python or shell"
HOMEPAGE="http://github.com/seveas/python-hpilo"
SRC_URI="https://files.pythonhosted.org/packages/dc/57/d9528a4636a71947890c96d57440db107331bbb125d40453ca1be1095d42/python-hpilo-4.4.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python-hpilo-4.4.3"

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
