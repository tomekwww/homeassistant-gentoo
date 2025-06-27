# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python client for Fixerio"
HOMEPAGE="https://github.com/amatellanes/fixerio"
SRC_URI="https://files.pythonhosted.org/packages/1f/d8/46fab77f1dd48149bc3f4689fd2647757487f4bbd893cefde59ca760bfbc/fixerio-1.0.0a0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/fixerio-1.0.0a0"

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
