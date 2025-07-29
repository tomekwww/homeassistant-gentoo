# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for interacting with Schlage WiFi locks"
HOMEPAGE="https://pypi.org/project/pyschlage/"
SRC_URI="https://files.pythonhosted.org/packages/1c/7f/b79aac056255bd3898f30ad608a571a7247a26afc9a24d5ba6c2ee5cb256/pyschlage-2025.7.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyschlage-2025.7.2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pycognito[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
