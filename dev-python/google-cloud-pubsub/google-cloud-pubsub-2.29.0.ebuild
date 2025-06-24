# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Google Cloud PubSub API client library"
HOMEPAGE="https://github.com/googleapis/python-pubsub"
SRC_URI="https://files.pythonhosted.org/packages/d6/4d/1db6b937d76d4cb1dca484e4f61f138b5611f0658992bf1ad6679bbddfad/google_cloud_pubsub-2.29.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/google_cloud_pubsub-2.29.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/grpcio-1.51.3[${PYTHON_USEDEP}]
	<dev-python/grpcio-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/google-auth-2.14.1[${PYTHON_USEDEP}]
	<dev-python/google-auth-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/google-api-core-1.34.0[${PYTHON_USEDEP}]
	<dev-python/google-api-core-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/proto-plus-1.22.0[${PYTHON_USEDEP}]
	<dev-python/proto-plus-2.0.0[${PYTHON_USEDEP}]
	<dev-python/protobuf-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/protobuf-3.20.2[${PYTHON_USEDEP}]
	>=dev-python/grpc-google-iam-v1-0.12.4[${PYTHON_USEDEP}]
	<dev-python/grpc-google-iam-v1-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/grpcio-status-1.33.2[${PYTHON_USEDEP}]
	>=dev-python/proto-plus-1.22.2[${PYTHON_USEDEP}]
	<dev-python/proto-plus-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/proto-plus-1.25.0[${PYTHON_USEDEP}]
	<dev-python/proto-plus-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/opentelemetry-api-1.27.0[${PYTHON_USEDEP}]
	>=dev-python/opentelemetry-sdk-1.27.0[${PYTHON_USEDEP}]
"
