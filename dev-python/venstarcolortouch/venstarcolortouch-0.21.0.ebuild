# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Interface Library for Venstar ColorTouch Thermostat API v5"
HOMEPAGE="https://github.com/hpeyerl/venstar_colortouch"
SRC_URI="https://files.pythonhosted.org/packages/89/fb/65260f9dc2aec6439aad17c45922dfe21b8234c6e14ca965d881c3d4f997/venstarcolortouch-0.21.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/venstarcolortouch-0.21"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.14.1[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
