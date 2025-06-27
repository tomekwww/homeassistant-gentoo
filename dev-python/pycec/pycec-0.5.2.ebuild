# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Provide HDMI CEC devices as objects especially for use with Home Assistant"
HOMEPAGE="https://github.com/konikvranik/pycec/"
SRC_URI="https://files.pythonhosted.org/packages/f4/bb/d407b6285f6dd7c30b33568f4af50b3b7c57bc4e9382e7878a20ddefe1be/pyCEC-0.5.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyCEC-0.5.2"

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
