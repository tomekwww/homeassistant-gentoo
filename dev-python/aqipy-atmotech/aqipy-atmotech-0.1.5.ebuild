# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="AQI calculation library"
HOMEPAGE="https://pypi.org/project/aqipy-atmotech/"
SRC_URI="https://files.pythonhosted.org/packages/6b/e7/178342669eea5f68d01c637afbce53a52fc1b6535683788ecc3d492194c1/aqipy-atmotech-0.1.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aqipy-atmotech-0.1.5"

LICENSE="Apache-2.0"
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
