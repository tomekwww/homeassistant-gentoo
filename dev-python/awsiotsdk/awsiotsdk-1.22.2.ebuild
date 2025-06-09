# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="AWS IoT SDK based on the AWS Common Runtime"
HOMEPAGE="https://github.com/aws/aws-iot-device-sdk-python-v2"
SRC_URI="https://files.pythonhosted.org/packages/82/ac/317fa29880d365980deae80b3edbf060a1686972c86f5fa92a2616bd621c/awsiotsdk-1.22.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/awsiotsdk-1.22.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	~dev-python/awscrt-0.24.1[${PYTHON_USEDEP}]
"
