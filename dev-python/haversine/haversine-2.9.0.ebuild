# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Calculate the distance between 2 points on Earth"
HOMEPAGE="https://github.com/mapado/haversine"
SRC_URI="https://files.pythonhosted.org/packages/1f/fe/5dc394a9db15c9f08c64ae050c03c01128227632fce07cc62aa5d32240d5/haversine-2.9.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/haversine-2.9.0"

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
