# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="AES encryption for zipfile"
HOMEPAGE="https://github.com/danifus/pyzipper"
SRC_URI="https://files.pythonhosted.org/packages/ac/97/2f03c67b40e531b30f0e1357476b4db989097a92cd30c6d2389cfa12db49/pyzipper-0.3.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyzipper-0.3.6"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pycryptodomex[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
