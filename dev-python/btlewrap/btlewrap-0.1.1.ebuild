# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="wrapper around different bluetooth low energy backends"
HOMEPAGE="https://github.com/ChristianKuehnel/btlewrap"
SRC_URI="https://files.pythonhosted.org/packages/8b/08/fce5925b2aea22fbd715abf6039214bdd7214b34a26c3c9d59eafb46a51e/btlewrap-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/btlewrap-0.1.1"

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
