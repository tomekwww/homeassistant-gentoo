# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="https://github.com/crownstone/crownstone-lib-python-uart"
SRC_URI="https://files.pythonhosted.org/packages/b9/18/48601f62dff46f372dfdf96cb1cb614003e30db570c09d87f69604b4fb81/crownstone-uart-2.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/crownstone-uart-2.1.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/crownstone-core-4.0.0[${PYTHON_USEDEP}]
	<dev-python/pyserial-4.4.0[${PYTHON_USEDEP}]
"

src_prepare() {
	touch requirements.txt
	distutils-r1_src_prepare
}


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
