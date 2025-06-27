# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python library to control CoolMasterNet HVAC bridges over asyncio"
HOMEPAGE="https://github.com/OnFreund/pycoolmasternet-async"
SRC_URI="https://files.pythonhosted.org/packages/bd/1e/25d3826a7d7efb8d75ccf8b9760598f38fad25829046e4e293ccf74f4877/pycoolmasternet_async-0.2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pycoolmasternet_async-0.2.2"

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
