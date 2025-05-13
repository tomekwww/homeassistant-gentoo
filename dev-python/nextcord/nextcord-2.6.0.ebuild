# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python wrapper for the Discord API forked from discordpy"
HOMEPAGE="https://github.com/nextcord/nextcord"
SRC_URI="https://files.pythonhosted.org/packages/f2/0e/347795cec6bc841ed426bc5e112380335869e9ba0922c5ed7ec7bb8ab1a5/nextcord-2.6.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
