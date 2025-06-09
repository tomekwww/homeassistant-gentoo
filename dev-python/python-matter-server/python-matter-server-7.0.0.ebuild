# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Open Home Foundation Matter Server"
HOMEPAGE="https://pypi.org/project/python-matter-server/"
SRC_URI="https://files.pythonhosted.org/packages/c8/a1/7ada33c245cec4800622d81e1e2f5e65462e91b922d94d0a5a3ea2722284/python_matter_server-7.0.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python_matter_server-7.0.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/aiorun[${PYTHON_USEDEP}]
	dev-python/async-timeout[${PYTHON_USEDEP}]
	dev-python/coloredlogs[${PYTHON_USEDEP}]
	dev-python/orjson[${PYTHON_USEDEP}]
	~dev-python/home-assistant-chip-clusters-2024.11.4[${PYTHON_USEDEP}]
"
