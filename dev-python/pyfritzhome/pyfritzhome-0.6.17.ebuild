# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="FritzBox Smarthome Python Library"
HOMEPAGE="http://github.com/hthiery/python-fritzhome"
SRC_URI="https://files.pythonhosted.org/packages/e2/28/a37359f9648f4be977fc79cf54d9cdedee6ce7252f9d903caab6efa87579/pyfritzhome-0.6.17.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyfritzhome-0.6.17"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/cryptography[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
