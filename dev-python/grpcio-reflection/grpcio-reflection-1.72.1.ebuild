# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Standard Protobuf Reflection Service for gRPC"
HOMEPAGE="https://grpc.io"
SRC_URI="https://files.pythonhosted.org/packages/18/f9/0caad91ed65e1d808d4a7607c872d1b1330bc24830e44347f4c76ec491ac/grpcio_reflection-1.72.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/grpcio_reflection-1.72.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/protobuf-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/protobuf-6.30.0[${PYTHON_USEDEP}]
	>=dev-python/grpcio-1.72.1[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
