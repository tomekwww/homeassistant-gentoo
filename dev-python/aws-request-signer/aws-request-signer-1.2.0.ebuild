# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python library to sign AWS requests using AWS Signature V4"
HOMEPAGE="https://www.github.com/iksteen/aws-request-signer"
SRC_URI="https://files.pythonhosted.org/packages/63/ab/2ca5870971f1e3601e27d22c0290a75dd90bcce066a67884d9034b7cf765/aws_request_signer-1.2.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
