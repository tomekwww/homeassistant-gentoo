# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Common code for vacuum map parsers"
HOMEPAGE="https://pypi.org/project/vacuum-map-parser-base/"
SRC_URI="https://files.pythonhosted.org/packages/8f/f8/5633c2d294ce0102bdfc008684a937d50cf59bab48286de962997e108db3/vacuum_map_parser_base-0.1.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/vacuum_map_parser_base-0.1.5"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pillow[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
