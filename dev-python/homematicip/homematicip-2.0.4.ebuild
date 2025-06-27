# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An API for the homematicip cloud"
HOMEPAGE="https://pypi.org/project/homematicip/"
SRC_URI="https://files.pythonhosted.org/packages/08/08/7a1e735205026dc69ef8cf87add8e1e4f890ba8d66fc07c1565f2998fee5/homematicip-2.0.4.post1.dev5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/homematicip-2.0.4.post1.dev5"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.32.0[${PYTHON_USEDEP}]
	>=dev-python/websockets-13.1.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.10.11[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.27.2[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
