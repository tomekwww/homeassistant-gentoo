# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Functionalities for Roborock vacuum map parsing"
HOMEPAGE="https://pypi.org/project/vacuum-map-parser-roborock/"
SRC_URI="https://files.pythonhosted.org/packages/39/b4/82583167a6b667151a6432fe9084232a090b36985751cd5c428998b2d080/vacuum_map_parser_roborock-0.1.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pillow[${PYTHON_USEDEP}]
	~dev-python/vacuum-map-parser-base-0.1.5[${PYTHON_USEDEP}]
"
