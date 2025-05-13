# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Handles the authorization flow to obtain tokens from Plextv via external redirection"
HOMEPAGE="https://github.com/jjlawren/python-plexauth/"
SRC_URI="https://files.pythonhosted.org/packages/df/87/6d97e15a8c0124b4e3c46b07d902e6d1f732148aafb0ff3871bfef61ad6a/plexauth-0.0.6.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
