# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Python driver for MongoDB httpwwwmongodborg"
HOMEPAGE="https://pypi.org/project/pymongo/"
SRC_URI="https://files.pythonhosted.org/packages/1a/35/b62a3139f908c68b69aac6a6a3f8cc146869de0a7929b994600e2c587c77/pymongo-4.10.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/dnspython-1.16.0[${PYTHON_USEDEP}]
	<dev-python/dnspython-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/pymongo-auth-aws-1.1.0[${PYTHON_USEDEP}]
	<dev-python/pymongo-auth-aws-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/pymongo-auth-aws-1.1.0[${PYTHON_USEDEP}]
	<dev-python/pymongo-auth-aws-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/pymongocrypt-1.10.0[${PYTHON_USEDEP}]
	<dev-python/pymongocrypt-2.0.0[${PYTHON_USEDEP}]
	dev-python/pykerberos[${PYTHON_USEDEP}]
	>=dev-python/winkerberos-0.5.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.5.0[${PYTHON_USEDEP}]
	>=dev-python/pyopenssl-17.2.0[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/service-identity-18.1.0[${PYTHON_USEDEP}]
	dev-python/python-snappy[${PYTHON_USEDEP}]
	dev-python/zstandard[${PYTHON_USEDEP}]
"
