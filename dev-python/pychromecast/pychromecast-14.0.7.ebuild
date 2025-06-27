# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python module to talk to Google Chromecast"
HOMEPAGE="https://pypi.org/project/PyChromecast/"
SRC_URI="https://files.pythonhosted.org/packages/c6/aa/0298ad9a60b888ccf15685c9654562000e55a1c7abaf72d9300c7b887824/pychromecast-14.0.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pychromecast-14.0.7"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/protobuf-4.25.1[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.25.1[${PYTHON_USEDEP}]
	>=dev-python/casttube-0.2.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
