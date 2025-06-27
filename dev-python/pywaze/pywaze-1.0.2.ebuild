# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Waze client for calculating routes and travel times"
HOMEPAGE="https://pypi.org/project/pywaze/"
SRC_URI="https://files.pythonhosted.org/packages/62/1c/072a03b4195329bd555d6b1e4e2cec2fa3b0adfd5bf89bef0ee887bdaa67/pywaze-1.0.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pywaze-1.0.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/httpx-0.24.1[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
