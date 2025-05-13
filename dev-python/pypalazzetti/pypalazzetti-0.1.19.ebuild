# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library to access and control a Palazzetti stove through a Palazzetti Connection Box"
HOMEPAGE="https://github.com/dotvav/py-palazzetti-api"
SRC_URI="https://files.pythonhosted.org/packages/9e/14/d0bfe85ddec254d8f42050517812d3344a3fcedbd4e7cad7f7b6bf32f2ca/pypalazzetti-0.1.19.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.10.3[${PYTHON_USEDEP}]
"
