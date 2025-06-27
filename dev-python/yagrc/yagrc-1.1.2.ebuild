# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Yet another gRPC reflection client"
HOMEPAGE="https://github.com/sparky8512/yagrc"
SRC_URI="https://files.pythonhosted.org/packages/7b/d2/d99f2bd77ed1112d920ec69e023971db13d72fde07601b1208b5513c7a2a/yagrc-1.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/yagrc-1.1.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/grpcio-1.12.0[${PYTHON_USEDEP}]
	>=dev-python/grpcio-reflection-1.7.3[${PYTHON_USEDEP}]
	>=dev-python/protobuf-4.22.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
