# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Status proto mapping for gRPC"
HOMEPAGE="https://grpc.io"
SRC_URI="https://files.pythonhosted.org/packages/d7/53/a911467bece076020456401f55a27415d2d70d3bc2c37af06b44ea41fc5c/grpcio_status-1.71.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/protobuf-5.26.1[${PYTHON_USEDEP}]
	<dev-python/protobuf-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/grpcio-1.71.0[${PYTHON_USEDEP}]
	>=dev-python/googleapis-common-protos-1.5.5[${PYTHON_USEDEP}]
"
