# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python package for the Honeywell Lyric Platform"
HOMEPAGE="https://github.com/timmo001/aiolyric"
SRC_URI="https://files.pythonhosted.org/packages/b1/52/4e914f4e518ff8ef8d34cc9efb25818c197477b53067702a583bc743bc33/aiolyric-2.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiolyric-2.0.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/incremental-22.10.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
"
