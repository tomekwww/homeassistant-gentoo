# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Little api client for paperlessngx"
HOMEPAGE="https://pypi.org/project/pypaperless/"
SRC_URI="https://files.pythonhosted.org/packages/27/91/67116557a97285e478d7a47fda262860eb0f0bce272ecf0a67b22fa3da37/pypaperless-4.1.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.16[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.20.0[${PYTHON_USEDEP}]
"
