# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="microBees Python Library"
HOMEPAGE="https://github.com/microBeesTech/pythonSDK/"
SRC_URI="https://files.pythonhosted.org/packages/b4/3a/9f90afdd1cd084fff05aef72e6f45e03e6db0baaa081661438f8859b3cdc/microBeesPy-0.3.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/microBeesPy-0.3.5"

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
