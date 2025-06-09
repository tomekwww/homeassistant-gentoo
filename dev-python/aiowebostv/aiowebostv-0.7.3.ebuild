# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to control webOS based LG TV devices"
HOMEPAGE="https://github.com/home-assistant-libs/aiowebostv"
SRC_URI="https://files.pythonhosted.org/packages/fb/43/4ca2efcd511d14aa75e072771259786e333db78bb319062aba2d78c5bb42/aiowebostv-0.7.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiowebostv-0.7.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.0[${PYTHON_USEDEP}]
"
