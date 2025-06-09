# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python wrapper for Mary TTS"
HOMEPAGE="https://github.com/Poeschl/speak2mary"
SRC_URI="https://files.pythonhosted.org/packages/a5/67/725beaf346ee262e6ed547eef91dfc54021a01e3b3f34be2e929d357846a/speak2mary-1.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/speak2mary-1.4.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
