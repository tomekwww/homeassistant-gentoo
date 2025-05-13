# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Common code for vacuum map parsers"
HOMEPAGE="https://pypi.org/project/vacuum-map-parser-base/"
SRC_URI="https://files.pythonhosted.org/packages/8f/f8/5633c2d294ce0102bdfc008684a937d50cf59bab48286de962997e108db3/vacuum_map_parser_base-0.1.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pillow[${PYTHON_USEDEP}]
"
