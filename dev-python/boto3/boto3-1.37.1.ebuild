# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="The AWS SDK for Python"
HOMEPAGE="https://github.com/boto/boto3"
SRC_URI="https://files.pythonhosted.org/packages/21/8c/c2af03daafaacea1db1823d23073facffa75818b61d376c3be77dd297ae8/boto3-1.37.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/boto3-1.37.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/botocore-1.38.0[${PYTHON_USEDEP}]
	>=dev-python/botocore-1.37.1[${PYTHON_USEDEP}]
	>=dev-python/jmespath-0.7.1[${PYTHON_USEDEP}]
	<dev-python/jmespath-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/s3transfer-0.11.0[${PYTHON_USEDEP}]
	<dev-python/s3transfer-0.12.0[${PYTHON_USEDEP}]
"
