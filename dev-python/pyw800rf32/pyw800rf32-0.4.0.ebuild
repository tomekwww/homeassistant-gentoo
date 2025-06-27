# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to communicate with the W800rf32 family of devices"
HOMEPAGE="https://github.com/horga83/W800rf32"
SRC_URI="https://files.pythonhosted.org/packages/39/59/ba638792c66d1caf492e3c1f7d6686070361047282d44aa90e9a6e2a21a4/pyW800rf32-0.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyW800rf32-0.4"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyserial-3.1.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
