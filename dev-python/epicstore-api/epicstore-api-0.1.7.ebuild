# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An API wrapper for Epic Games Store written in Python"
HOMEPAGE="https://github.com/SD4RK/epicstore_api"
SRC_URI="https://files.pythonhosted.org/packages/29/ac/6a97e6a9c06fafbcd7cb664706bb55329e241699bea18d0ae76e75b2cb56/epicstore_api-0.1.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/epicstore_api-0.1.7"

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
