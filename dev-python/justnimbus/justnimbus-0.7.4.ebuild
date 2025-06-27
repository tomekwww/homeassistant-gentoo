# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python Wrapper for the Just Nimbus API"
HOMEPAGE="https://github.com/kvanzuijlen/justnimbus"
SRC_URI="https://files.pythonhosted.org/packages/76/6e/c363500560727e0ddc1fda04b87cee369a45b3ca76055c3f25c5bafbc999/justnimbus-0.7.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/justnimbus-0.7.4"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.27.1[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
