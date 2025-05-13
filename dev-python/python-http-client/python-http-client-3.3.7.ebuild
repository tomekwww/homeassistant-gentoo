# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="HTTP REST client simplified for Python"
HOMEPAGE="https://github.com/sendgrid/python-http-client"
SRC_URI="https://files.pythonhosted.org/packages/56/fa/284e52a8c6dcbe25671f02d217bf2f85660db940088faf18ae7a05e97313/python_http_client-3.3.7.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
