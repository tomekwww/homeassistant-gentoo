# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Standard Protobuf Reflection Service for gRPC"
HOMEPAGE="https://grpc.io"
SRC_URI="https://files.pythonhosted.org/packages/14/91/ab7ea12c31ab7e58bbd94bb21f96569b08d89ffbf01b594cd9b3898e8c27/grpcio_reflection-1.72.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/grpcio_reflection-1.72.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/protobuf-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/protobuf-6.30.0[${PYTHON_USEDEP}]
	>=dev-python/grpcio-1.72.0[${PYTHON_USEDEP}]
"
