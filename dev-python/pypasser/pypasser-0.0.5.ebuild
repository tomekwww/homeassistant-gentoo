# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Bypassing reCaptcha V3 by sending HTTP requests  solving reCaptcha V2 using speech to text"
HOMEPAGE="https://github.com/xHossein/PyPasser"
SRC_URI="https://files.pythonhosted.org/packages/dc/18/405c919c0398ecdb9ff5fa62a6c092751d7c6d5865191633967f95ded134/PyPasser-0.0.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/PyPasser-0.0.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
