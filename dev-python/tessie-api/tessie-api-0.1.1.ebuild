# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A small python package that wraps up the Tessie API"
HOMEPAGE="https://pypi.org/project/tessie-api/"
SRC_URI="https://files.pythonhosted.org/packages/8b/00/9f16fe6b50d73aca209539277e99d055c47343c32b3a614eb3a9df89571a/tessie_api-0.1.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
