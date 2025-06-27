# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A common runtime for AWS Python projects"
HOMEPAGE="https://github.com/awslabs/aws-crt-python"
SRC_URI="https://files.pythonhosted.org/packages/6a/c2/a3f55f5012923b4e1498717b4d733d49309523ffff3ddf87f73c15cc42a9/awscrt-0.24.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/awscrt-0.24.1"

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
