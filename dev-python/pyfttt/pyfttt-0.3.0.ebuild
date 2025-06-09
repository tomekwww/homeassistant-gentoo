# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python tools for interacting with the IFTTT Maker Channel"
HOMEPAGE="https://github.com/briandconnelly/pyfttt"
SRC_URI="https://files.pythonhosted.org/packages/d3/31/33a96715acbbf64de9fcb8787b800f55cf97428c044f8613ca5e4a751136/pyfttt-0.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyfttt-0.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
