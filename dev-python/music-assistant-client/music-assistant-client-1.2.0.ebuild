# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Music Assistant Client"
HOMEPAGE="https://pypi.org/project/music-assistant-client/"
SRC_URI="https://files.pythonhosted.org/packages/9d/5d/c183bc24a3fb431139f784a3e81bd346d83e0da8333201442f2164deb3de/music_assistant_client-1.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/music_assistant_client-1.2.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.6[${PYTHON_USEDEP}]
	~dev-python/music-assistant-models-1.1.43[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.0[${PYTHON_USEDEP}]
"
