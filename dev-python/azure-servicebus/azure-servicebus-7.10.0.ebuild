# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Microsoft Azure Service Bus Client Library for Python"
HOMEPAGE="https://github.com/Azure/azure-sdk-for-python"
SRC_URI="https://files.pythonhosted.org/packages/4d/41/13ecf05ed4f9192d2aed22f7da8bd508abd2fe33f825f955d2738a9ccbad/azure-servicebus-7.10.0.zip -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
