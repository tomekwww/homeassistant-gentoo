# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Provides a python api to interact with a Hikvision camera event stream and toggle motion detection"
HOMEPAGE="https://github.com/mezz64/pyhik"
SRC_URI="https://files.pythonhosted.org/packages/dd/7a/93029a8d2d3cf5b543d255845f5fda4f8c69d612799b08e7a66ebaa52872/pyHik-0.3.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyHik-0.3.2"

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
