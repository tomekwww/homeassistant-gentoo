# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Noise suppression and automatic gain with speex"
HOMEPAGE="https://github.com/rhasspy/speex-noise"
SRC_URI="https://files.pythonhosted.org/packages/ee/1d/7d2ebb8f73c2b2e929b4ba5370b35dbc91f37268ea53f4b6acd9afa532cb/pyspeex_noise-1.0.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
