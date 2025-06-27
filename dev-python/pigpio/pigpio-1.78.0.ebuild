# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Raspberry Pi GPIO module"
HOMEPAGE="http://abyz.me.uk/rpi/pigpio/python.html"
SRC_URI="https://files.pythonhosted.org/packages/a9/4a/3ebdfd90906553fb5420e80a475eb52f0809f2a29b547ba3b260db0cbc8f/pigpio-1.78.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pigpio-1.78"

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
