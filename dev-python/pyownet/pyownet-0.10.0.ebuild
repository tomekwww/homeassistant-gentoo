# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python OWFS client library owserver protocol"
HOMEPAGE="https://github.com/miccoli/pyownet"
SRC_URI="https://files.pythonhosted.org/packages/13/97/03560c37663b70cf503e9e0896c60646996de6b5730fd1a6f2f79bb869e2/pyownet-0.10.0.post1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
