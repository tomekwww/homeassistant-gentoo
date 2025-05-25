# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="MONGODBAWS authentication support for PyMongo"
HOMEPAGE="https://pypi.org/project/pymongo-auth-aws/"
SRC_URI="https://files.pythonhosted.org/packages/c7/37/ca8d840f322f0047b71afcec7a489b1ea1f59a5f6d29f91ad8004024736f/pymongo_auth_aws-1.3.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/boto3[${PYTHON_USEDEP}]
	dev-python/botocore[${PYTHON_USEDEP}]
"
