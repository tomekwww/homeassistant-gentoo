# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for talking to Veracontrollers"
HOMEPAGE="https://github.com/pavoni/pyvera"
SRC_URI="https://files.pythonhosted.org/packages/2d/91/a1e7a818a9ea84f3c0159c7173afc40485509aa7cf790ca61119356ab76d/pyvera-0.3.15.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyvera-0.3.15"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.22.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
