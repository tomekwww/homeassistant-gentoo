# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Wrapper for the Proxmox 2x API HTTP and SSH"
HOMEPAGE="https://proxmoxer.github.io/docs/"
SRC_URI="https://files.pythonhosted.org/packages/00/dd/629ec9dfdab26a75e3120403231bf3dc3ecda3ebe36db72c829ae30cbfca/proxmoxer-2.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/proxmoxer-2.0.1"

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
