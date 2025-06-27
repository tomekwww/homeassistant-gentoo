# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="RFK101 Proximity card reader over Ethernet"
HOMEPAGE="https://github.com/dubnom/rfk101py"
SRC_URI="https://files.pythonhosted.org/packages/96/d2/deb9dea62329042e6397a9d73e3188f996489b69e25b1714fd24f3c7038a/rfk101py-0.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/rfk101py-0.0.1"

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
