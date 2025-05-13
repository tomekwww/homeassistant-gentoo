# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library to control Comelit Simplehome"
HOMEPAGE="https://pypi.org/project/aiocomelit/"
SRC_URI="https://files.pythonhosted.org/packages/a6/40/d3596fbb1a285448fbf20a4648d3dcc9bd8543ec1ffa5dfca7b5fa4503cf/aiocomelit-0.12.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/colorlog[${PYTHON_USEDEP}]
	dev-python/pint[${PYTHON_USEDEP}]
"
