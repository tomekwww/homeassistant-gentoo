# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="SocketIO server and client for Python"
HOMEPAGE="https://pypi.org/project/python-socketio/"
SRC_URI="https://files.pythonhosted.org/packages/21/1a/396d50ccf06ee539fa758ce5623b59a9cb27637fc4b2dc07ed08bf495e77/python_socketio-5.13.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python_socketio-5.13.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bidict-0.21.0[${PYTHON_USEDEP}]
	>=dev-python/python-engineio-4.11.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
