# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Discover connect and control Gree based minisplit systems"
HOMEPAGE="https://github.com/cmroche/greeclimate"
SRC_URI="https://files.pythonhosted.org/packages/1c/7f/2285faf50df3c6e67bfad181215593ec0663a5b9e0a135274c6b5687998f/greeclimate-2.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/greeclimate-2.1.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/netifaces[${PYTHON_USEDEP}]
	<dev-python/pycryptodome-4.10.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
