# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous client for the OpenMeteo API"
HOMEPAGE="https://github.com/frenck/python-open-meteo"
SRC_URI="https://files.pythonhosted.org/packages/a1/a1/07539fd4acb9bae161aee52407da798998444919271c7d6c4f4352961155/open_meteo-0.3.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/open_meteo-0.3.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.10.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.8[${PYTHON_USEDEP}]
"
