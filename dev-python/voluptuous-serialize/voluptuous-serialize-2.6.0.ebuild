# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Convert voluptuous schemas to dictionaries"
HOMEPAGE="http://github.com/balloob/voluptuous-serialize"
SRC_URI="https://files.pythonhosted.org/packages/42/09/c26b38ab35d9f61e9bf5c3e805215db1316dd73c77569b47ab36a40d19b1/voluptuous-serialize-2.6.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/voluptuous-serialize-2.6.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/voluptuous[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
