# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for interacting with ripplecom"
HOMEPAGE="https://github.com/nkgilley/python-ripple-api"
SRC_URI="https://files.pythonhosted.org/packages/47/23/33832ff5e0e2e8108f9fb425490fbe9f1fec501c7d4931d792ec24516f31/python-ripple-api-0.0.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python-ripple-api-0.0.3"

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
