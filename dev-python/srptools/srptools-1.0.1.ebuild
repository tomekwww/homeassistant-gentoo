# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Tools to implement Secure Remote Password SRP authentication"
HOMEPAGE="https://github.com/idlesign/srptools"
SRC_URI="https://files.pythonhosted.org/packages/a1/8a/d62af55a56d56216e96563bc9c29c2d16d957317742c2e5bd4e79a524b06/srptools-1.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/srptools-1.0.1"

LICENSE="BSD"
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
