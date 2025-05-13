# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for Xeoma web server API"
HOMEPAGE="https://github.com/jeradM/pyxeoma"
SRC_URI="https://files.pythonhosted.org/packages/dd/79/ffd89a78cc7e129ff7c66f6e75bc2067bd301ea57a30de874309cf0a1e47/pyxeoma-1.4.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
