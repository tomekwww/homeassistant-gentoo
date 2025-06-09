# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper implementation for Amcrest cameras"
HOMEPAGE="http://github.com/tchellomello/python-amcrest"
SRC_URI="https://files.pythonhosted.org/packages/30/41/61042da0114469309a499c651600f31f58f613f823ea1ba76349b9f327e8/amcrest-1.9.8.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/amcrest-1.9.8"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/argcomplete[${PYTHON_USEDEP}]
	dev-python/httpx[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
	dev-python/urllib3[${PYTHON_USEDEP}]
"
