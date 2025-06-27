# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="ISO 4217 currency data package for Python"
HOMEPAGE="https://github.com/dahlia/iso4217"
SRC_URI="https://files.pythonhosted.org/packages/51/de/80bb9b6a0d99c31d829c0f7646274a2ec8e269ff6a0556050ce898b19af0/iso4217-1.13.20250512.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/iso4217-1.13.20250512"

LICENSE="BSD"
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
