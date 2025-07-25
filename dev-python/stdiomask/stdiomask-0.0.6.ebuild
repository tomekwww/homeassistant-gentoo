# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A crossplatform Python module for entering passwords to a stdio terminal and displaying a  mask which getpass cannot do"
HOMEPAGE="https://github.com/asweigart/stdiomask"
SRC_URI="https://files.pythonhosted.org/packages/47/a2/f72fd263cecb11ed4cc96bd31608359e1df30349c665674e5c35ea9a72d6/stdiomask-0.0.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/stdiomask-0.0.6"

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
