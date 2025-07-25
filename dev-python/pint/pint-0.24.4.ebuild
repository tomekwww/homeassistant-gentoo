# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Physical quantities module"
HOMEPAGE="https://pypi.org/project/Pint/"
SRC_URI="https://files.pythonhosted.org/packages/20/bb/52b15ddf7b7706ed591134a895dbf6e41c8348171fb635e655e0a4bbb0ea/pint-0.24.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pint-0.24.4"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/platformdirs-2.1.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/flexcache-0.3.0[${PYTHON_USEDEP}]
	>=dev-python/flexparser-0.4.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
