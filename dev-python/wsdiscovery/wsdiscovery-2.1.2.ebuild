# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="WSDiscovery implementation for python"
HOMEPAGE="https://github.com/andreikop/python-ws-discovery.git"
SRC_URI="https://files.pythonhosted.org/packages/6c/81/c3e596d7c043a8b557feccb7f675d9bc4dbbcf2efcf08f4d30872a3fe429/WSDiscovery-2.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/WSDiscovery-2.1.2"

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
