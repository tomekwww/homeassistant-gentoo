# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="IAM API client library"
HOMEPAGE="https://pypi.org/project/grpc-google-iam-v1/"
SRC_URI="https://files.pythonhosted.org/packages/b9/4e/8d0ca3b035e41fe0b3f31ebbb638356af720335e5a11154c330169b40777/grpc_google_iam_v1-0.14.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/grpc_google_iam_v1-0.14.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/grpcio-1.44.0[${PYTHON_USEDEP}]
	<dev-python/grpcio-2.0.0[${PYTHON_USEDEP}]
	<dev-python/googleapis-common-protos-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/googleapis-common-protos-1.56.0[${PYTHON_USEDEP}]
	<dev-python/protobuf-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/protobuf-3.20.2[${PYTHON_USEDEP}]
"
