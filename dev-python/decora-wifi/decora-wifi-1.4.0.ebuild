# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for controlling Leviton Decora Smart WiFi switches"
HOMEPAGE="http://github.com/tlyakhov/python-decora_wifi"
SRC_URI="https://files.pythonhosted.org/packages/31/0a/74af34ea5212fe18ab74558205f845b1738a12e36e7c8fb395f875b8e0ab/decora_wifi-1.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/decora_wifi-1.4"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/inflect[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
