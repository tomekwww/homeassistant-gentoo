# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library that provides a Python async interface to Nightscout"
HOMEPAGE="https://github.com/marciogranzotto/py-nightscout"
SRC_URI="https://files.pythonhosted.org/packages/6a/d7/6d0126e56371d1cec4546051f2bcecdc4f78f2b4eac04fafa9e136335625/py_nightscout-1.2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/py_nightscout-1.2.2"

LICENSE="MIT"
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
