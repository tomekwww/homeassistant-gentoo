# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Basic Python NZBGet API client"
HOMEPAGE="https://github.com/holiestofhandgrenades/pynzbgetapi"
SRC_URI="https://files.pythonhosted.org/packages/90/59/eb1539ff6c4cb8789905f6c774cc45e4ce0c74186ce95c921a9370efff85/pynzbgetapi-0.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pynzbgetapi-0.2.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
