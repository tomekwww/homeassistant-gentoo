# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Control LimitlessLED products"
HOMEPAGE="https://github.com/happyleavesaoc/python-limitlessled/"
SRC_URI="https://files.pythonhosted.org/packages/11/b5/a6eda0cf64c484e82040902cac45173adb4e26fa349441f881f6337e0891/limitlessled-1.1.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/limitlessled-1.1.3"

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
