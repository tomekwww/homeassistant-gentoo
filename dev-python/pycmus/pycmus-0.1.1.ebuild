# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python cmus remote library"
HOMEPAGE="https://pypi.org/project/pycmus/"
SRC_URI="https://files.pythonhosted.org/packages/7c/d6/430ff02d78508d1ec187c77ab595808de24475d45da9c394dbdd275ad208/pycmus-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pycmus-0.1.1"

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
