# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Simple python wrapper over wirelesstags REST API"
HOMEPAGE="https://github.com/sergeymaysak/wirelesstagpy/"
SRC_URI="https://files.pythonhosted.org/packages/f6/ba/ffa6588000be0319adf3750273c150e48f5a15e167839867e277401fa68a/wirelesstagpy-0.8.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/wirelesstagpy-0.8.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.18.4[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
