# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Control of Greenwave Reality Lights"
HOMEPAGE="https://github.com/dfiel/greenwavereality"
SRC_URI="https://files.pythonhosted.org/packages/55/4d/a88bc4aee49ec48736c952466d8c9e8a19d34777506f560afb26130e34f1/greenwavereality-0.5.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/greenwavereality-0.5.1"

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
