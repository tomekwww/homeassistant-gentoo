# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An unofficial reverse engineered Husqvarna Automower Connect BLE library"
HOMEPAGE="https://pypi.org/project/automower-ble/"
SRC_URI="https://files.pythonhosted.org/packages/79/16/7c1bd3c188b37f2705c8619fa1190b75103eeefbc5d78683a3a1c448945d/automower_ble-0.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/automower_ble-0.2.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/bleak[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
