# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Interact with Yale Smart Alarm systems"
HOMEPAGE="https://github.com/domwillcode/yale-smart-alarm-client"
SRC_URI="https://files.pythonhosted.org/packages/d5/59/6bd7c1ff27af812fe7c914988b6e875f9d8b71b462c456ad9859cac7fac8/yalesmartalarmclient-0.4.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/yalesmartalarmclient-0.4.3"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.32.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
