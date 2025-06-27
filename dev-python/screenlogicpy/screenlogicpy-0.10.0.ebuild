# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Interface for Pentair ScreenLogic connected pool controllers over IP via Python"
HOMEPAGE="https://github.com/dieselrabbit/screenlogicpy"
SRC_URI="https://files.pythonhosted.org/packages/cc/45/168391d2ecb10cf87f7c0d7c52f6d891f79c8a019999daa8b1f742db91a6/screenlogicpy-0.10.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/screenlogicpy-0.10.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/async-timeout-3.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
