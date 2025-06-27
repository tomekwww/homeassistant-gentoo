# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A package to interact with the Microsoft Graph API for personal OneDrives"
HOMEPAGE="https://pypi.org/project/onedrive-personal-sdk/"
SRC_URI="https://files.pythonhosted.org/packages/3f/14/540470d4b44b758329d6450b1a3bc24298f3ce4700726fd6c564d37cfa7e/onedrive_personal_sdk-0.0.14.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/onedrive_personal_sdk-0.0.14"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.9.1[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
