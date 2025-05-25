# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Protobuf code generator for gRPC"
HOMEPAGE="https://grpc.io"
SRC_URI="https://files.pythonhosted.org/packages/d5/28/66f9061fdb6f49b4fd93f33c6e573ab67c30c3f310435551a1f2570ebba6/grpcio_tools-1.72.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/protobuf-6.30.0[${PYTHON_USEDEP}]
	<dev-python/protobuf-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/grpcio-1.72.0[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
"
