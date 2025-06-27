# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Dynalite panel for Home Assistant"
HOMEPAGE="https://pypi.org/project/dynalite-panel/"
SRC_URI="https://files.pythonhosted.org/packages/29/23/26427908d920b317c615e80fb1d3869b29d70fadd6e28dc418763d671daf/dynalite-panel-0.0.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/dynalite-panel-0.0.4"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
