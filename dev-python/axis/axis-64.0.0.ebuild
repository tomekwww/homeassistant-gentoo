# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library for communicating with devices from Axis Communications"
HOMEPAGE="https://pypi.org/project/axis/"
SRC_URI="https://files.pythonhosted.org/packages/4e/4a/506ebc61488cf37cc016639141ec6beae34a894a564a732bad9642638a1c/axis-64.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/httpx-0.26.0[${PYTHON_USEDEP}]
	>dev-python/orjson-3.9.0[${PYTHON_USEDEP}]
	>dev-python/packaging-23.0.0[${PYTHON_USEDEP}]
	>=dev-python/xmltodict-0.13.0[${PYTHON_USEDEP}]
"
