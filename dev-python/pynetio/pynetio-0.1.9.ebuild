# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Binding library for Koukaam netio devices"
HOMEPAGE="https://github.com/eagleamon/pynetio"
SRC_URI="https://files.pythonhosted.org/packages/aa/34/54e38d62a6517c229303ae9825e880d20ed60ea9eb46b84638ee9a05c6d9/pynetio-0.1.9.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pynetio-0.1.9.1"

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
