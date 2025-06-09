# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Microsoft Azure Azure Queue Storage Client Library for Python"
HOMEPAGE="https://github.com/Azure/azure-sdk-for-python/tree/main/sdk/storage/azure-storage-queue"
SRC_URI="https://files.pythonhosted.org/packages/6c/b3/45bae4589fb9d1be0dc34db9422cb7c042a8290e015c59406cefdb22f93c/azure_storage_queue-12.12.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/azure_storage_queue-12.12.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/azure-core-1.30.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.1.4[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.6.0[${PYTHON_USEDEP}]
	>=dev-python/isodate-0.6.1[${PYTHON_USEDEP}]
"
