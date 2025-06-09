# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Microsoft Azure Identity Library for Python"
HOMEPAGE="https://github.com/Azure/azure-sdk-for-python/tree/main/sdk/identity/azure-identity"
SRC_URI="https://files.pythonhosted.org/packages/41/52/458c1be17a5d3796570ae2ed3c6b7b55b134b22d5ef8132b4f97046a9051/azure_identity-1.23.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/azure_identity-1.23.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/azure-core-1.31.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.5.0[${PYTHON_USEDEP}]
	>=dev-python/msal-1.30.0[${PYTHON_USEDEP}]
	>=dev-python/msal-extensions-1.2.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.0.0[${PYTHON_USEDEP}]
"
