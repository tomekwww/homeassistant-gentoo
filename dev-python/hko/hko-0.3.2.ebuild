# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An unofficial Python wrapper for public API of Hong Kong Observatory"
HOMEPAGE="https://github.com/MisterCommand/python-hko"
SRC_URI="https://files.pythonhosted.org/packages/70/5a/09d5b1b0c8817964064f50274611566b757a4ab03bffa8b91de8337d5886/hko-0.3.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/hko-0.3.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
"
