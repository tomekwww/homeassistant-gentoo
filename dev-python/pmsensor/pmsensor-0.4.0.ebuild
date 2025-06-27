# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to read data from environment sensors"
HOMEPAGE="https://github.com/open-homeautomation/pmsensor"
SRC_URI="https://files.pythonhosted.org/packages/c8/2d/a3807dc5f0e7c824fe0f0ba964f39636da39574c6ed30081a5e36f3e3b30/pmsensor-0.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pmsensor-0.4"

LICENSE="MIT"
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
