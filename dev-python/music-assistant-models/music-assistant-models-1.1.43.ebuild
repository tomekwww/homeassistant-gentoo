# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Music Assistant Base Models"
HOMEPAGE="https://pypi.org/project/music-assistant-models/"
SRC_URI="https://files.pythonhosted.org/packages/78/0b/f7724b37d54dd03a286457bc122a7d3d611e6e889a72f91d5ff4d2134d51/music_assistant_models-1.1.43.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/orjson-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.14.0[${PYTHON_USEDEP}]
"
