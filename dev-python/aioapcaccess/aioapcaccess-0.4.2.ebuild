# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async version of apcaccess library implemented in python"
HOMEPAGE="https://pypi.org/project/aioapcaccess/"
SRC_URI="https://github.com/yuxincs/aioapcaccess/archive/refs/tags/v0.4.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioapcaccess-0.4.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"

src_prepare() {
    sed 29d -i pyproject.toml
    sed "5c\version = \"${PV}\"\n" -i pyproject.toml
    distutils-r1_src_prepare
}

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
