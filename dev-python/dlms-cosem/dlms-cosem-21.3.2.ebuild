# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library for DLMSCOSEM"
HOMEPAGE="https://github.com/pwitab/dlms-cosem"
SRC_URI="https://files.pythonhosted.org/packages/e9/a7/523db52982be6321e0755278ae3ad3e9a7615c7baf8828e66d41e374596b/dlms-cosem-21.3.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/dlms-cosem-21.3.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/attrs-20.3.0[${PYTHON_USEDEP}]
	>=dev-python/pyserial-3.5.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-35.0.0[${PYTHON_USEDEP}]
	>=dev-python/asn1crypto-1.4.0[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.8.1[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-3.10.0[${PYTHON_USEDEP}]
"
