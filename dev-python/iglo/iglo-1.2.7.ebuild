# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Control iGlo based RGB lights"
HOMEPAGE="http://github.com/jesserockz/python-iglo"
SRC_URI="https://files.pythonhosted.org/packages/c1/e4/1001aec101538c47c2d20771230a019185cb0bd72fbcc71b6c4fdef59a44/iglo-1.2.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/iglo-1.2.7"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
