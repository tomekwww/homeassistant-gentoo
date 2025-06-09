# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library that handling with ffmpeg for homeassistant"
HOMEPAGE="https://github.com/pvizeli/ha-ffmpeg"
SRC_URI="https://files.pythonhosted.org/packages/1e/3b/bd1284a9bc39cc119b0da551a81be6cf30dc3cfb369ce8c62fb648d7a2ea/ha_ffmpeg-3.2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ha_ffmpeg-3.2.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/async-timeout[${PYTHON_USEDEP}]
"
