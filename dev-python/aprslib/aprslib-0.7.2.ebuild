# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Module for accessing APRSIS and parsing APRS packets"
HOMEPAGE="https://github.com/rossengeorgiev/aprs-python"
SRC_URI="https://files.pythonhosted.org/packages/15/2b/3c051f7bf65cb684040dfc13713d8836b72615f3b811107736aee59cab0d/aprslib-0.7.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aprslib-0.7.2"

LICENSE="BSD"
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
