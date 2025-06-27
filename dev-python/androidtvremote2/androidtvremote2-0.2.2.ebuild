# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library for interacting with Android TV using the Android TV Remote protocol v2"
HOMEPAGE="https://pypi.org/project/androidtvremote2/"
SRC_URI="https://files.pythonhosted.org/packages/72/99/c203e2a4eb552633ed85f5481a08e427698f9228f48c0b2d22275f8f51f0/androidtvremote2-0.2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/androidtvremote2-0.2.2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiofiles-0.8.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/protobuf-4.21.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
