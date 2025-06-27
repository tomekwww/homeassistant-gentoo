# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Remote control your Mediaroom Setupbox"
HOMEPAGE="http://github.com/dgomes/pymediaroom"
SRC_URI="https://files.pythonhosted.org/packages/0a/3e/e63c67ebe800ba7345c147309b85cb8988f0371ea5a244d99c1e1029b3bb/pymediaroom-0.6.5.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pymediaroom-0.6.5.4"

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
