# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Interact with PocketCasts unofficial API"
HOMEPAGE="https://github.com/nwithan8/pycketcasts"
SRC_URI="https://files.pythonhosted.org/packages/29/48/fbe663f78550b679af2dfc353e38f97344966074cd027aee54af31cf272a/pycketcasts-1.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pycketcasts-1.0.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
