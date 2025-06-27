# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python bindings for the Elvia API"
HOMEPAGE="https://github.com/andersem/elvia-python"
SRC_URI="https://files.pythonhosted.org/packages/d2/d0/f0081cdabb8ddd80c66437545e0a7aa0f8ac547f363d38645a3e838415f4/elvia-0.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/elvia-0.1.0"

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
