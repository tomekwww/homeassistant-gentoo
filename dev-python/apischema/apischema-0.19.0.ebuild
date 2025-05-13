# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="JSON deserialization GraphQL and JSON schema generation using Python typing"
HOMEPAGE="https://pypi.org/project/apischema/"
SRC_URI="https://files.pythonhosted.org/packages/8f/53/ff03c63f973222627b897a70379f02263b28bee3c8fa8d80f6f0c449675c/apischema-0.19.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
