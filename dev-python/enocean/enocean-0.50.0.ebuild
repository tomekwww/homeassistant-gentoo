# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="EnOcean serial protocol implementation"
HOMEPAGE="https://github.com/kipe/enocean"
SRC_URI="https://files.pythonhosted.org/packages/cc/c8/2199eaf14e90ff39684eb87b28fe54a7f1da690609d07e76df5b829ed501/enocean-0.50.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/enocean-0.50.0"

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
