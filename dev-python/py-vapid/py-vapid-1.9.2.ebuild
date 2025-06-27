# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Simple VAPID header generation library"
HOMEPAGE="https://pypi.org/project/py-vapid/"
SRC_URI="https://files.pythonhosted.org/packages/ff/57/5c1c61f27ce01f939443cf3f6c279a295f7ec0327b18a1cbbcfefe0b5456/py_vapid-1.9.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/py_vapid-1.9.2"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cryptography-2.5.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
