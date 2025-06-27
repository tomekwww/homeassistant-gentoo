# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Retry code until it succeeds"
HOMEPAGE="https://github.com/jd/tenacity"
SRC_URI="https://files.pythonhosted.org/packages/a3/4d/6a19536c50b849338fcbe9290d562b52cbdcf30d8963d3588a68a4107df1/tenacity-8.5.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/tenacity-8.5.0"

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
