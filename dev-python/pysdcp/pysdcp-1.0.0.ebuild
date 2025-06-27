# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="SDCP library to control Sony Projectors"
HOMEPAGE="https://github.com/Galala7/pySDCP"
SRC_URI="https://files.pythonhosted.org/packages/6b/b9/85bf4f08a2251e732caa6e7f3462e2c2d77a1e2b1f80d16d273710e1c08c/pySDCP-1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pySDCP-1"

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
