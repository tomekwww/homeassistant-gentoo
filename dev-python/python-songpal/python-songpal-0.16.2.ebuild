# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for interfacing with Sonys Songpal devices"
HOMEPAGE="https://github.com/rytilahti/python-songpal"
SRC_URI="https://files.pythonhosted.org/packages/27/12/a41586ed15da6e355da914792bc7a6b5a58c1c7b0ff6fd25069a56bad423/python_songpal-0.16.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python_songpal-0.16.2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	>=dev-python/async-upnp-client-0.32.0[${PYTHON_USEDEP}]
	dev-python/attrs[${PYTHON_USEDEP}]
	>=dev-python/click-8.0.0[${PYTHON_USEDEP}]
	<dev-python/click-8.2.0[${PYTHON_USEDEP}]
"
