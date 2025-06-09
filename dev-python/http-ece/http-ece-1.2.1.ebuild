# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Encrypted Content Encoding for HTTP"
HOMEPAGE="https://github.com/martinthomson/encrypted-content-encoding"
SRC_URI="https://files.pythonhosted.org/packages/7c/af/249d1576653b69c20b9ac30e284b63bd94af6a175d72d87813235caf2482/http_ece-1.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/http_ece-1.2.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cryptography-2.5.0[${PYTHON_USEDEP}]
"
