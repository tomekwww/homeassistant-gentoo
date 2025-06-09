# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python 37 implementation of the Twitch Helix API PubSub EventSub and Chat"
HOMEPAGE="https://github.com/Teekeks/pyTwitchAPI"
SRC_URI="https://files.pythonhosted.org/packages/70/b2/210a8465838616ed6c6289df3b08c50dfc4b8f892fb926f7e1dbe8ab236a/twitchapi-4.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/twitchapi-4.2.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.3[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.8.2[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
"
