# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library which communicates with Deconz radios for zigpy"
HOMEPAGE="https://pypi.org/project/zigpy-deconz/"
SRC_URI="https://files.pythonhosted.org/packages/24/e0/d826fcebc9fc1e954869ea9580f92df019d6608f05f9cbde8dd84d062c1c/zigpy_deconz-0.25.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/zigpy_deconz-0.25.0"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/voluptuous[${PYTHON_USEDEP}]
	>=dev-python/zigpy-0.80.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
