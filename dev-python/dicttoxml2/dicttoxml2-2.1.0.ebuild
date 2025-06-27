# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Converts a Python dictionary or other native data type into a valid XML string"
HOMEPAGE="https://github.com/Ousret/dicttoxml"
SRC_URI="https://files.pythonhosted.org/packages/0b/24/7a6d37b2770843e34685e470fd711955cb0f77c354c73d8ca64b02420bce/dicttoxml2-2.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/dicttoxml2-2.1.0"

LICENSE="GPL-2"
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
