# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Calculation library for CRCs and checksums"
HOMEPAGE="https://github.com/MartinScharrer/crccheck"
SRC_URI="https://files.pythonhosted.org/packages/50/ee/92daff1ca6f8c31f97afe9666efa6d43c74f7ea0415a04ba19300cefef7c/crccheck-1.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/crccheck-1.3.0"

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
