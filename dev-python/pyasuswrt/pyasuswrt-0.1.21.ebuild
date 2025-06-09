# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Api wrapper for Asuswrt httpswwwasuscomASUSWRT using protocol HTTP"
HOMEPAGE="https://github.com/ollo69/pyasuswrt"
SRC_URI="https://files.pythonhosted.org/packages/ad/09/15df06dd173863b224a9b61861110db5caae26b4f9c78077d64b6cc593c7/pyasuswrt-0.1.21.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyasuswrt-0.1.21"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
"
