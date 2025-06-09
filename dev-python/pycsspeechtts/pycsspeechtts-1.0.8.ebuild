# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python 3 interface to Microsoft Cognitive Services Text To Speech"
HOMEPAGE="https://pypi.org/project/pycsspeechtts/"
SRC_URI="https://files.pythonhosted.org/packages/e9/81/7821aeda210239a9a490e587c9f4f0488f8cb723b46b822268e19b0e822f/pycsspeechtts-1.0.8.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pycsspeechtts-1.0.8"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
