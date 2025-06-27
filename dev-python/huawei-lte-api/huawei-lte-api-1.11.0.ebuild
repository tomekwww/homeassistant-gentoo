# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="API For huawei LANWAN LTE Modems"
HOMEPAGE="https://github.com/Salamek/huawei-lte-api"
SRC_URI="https://files.pythonhosted.org/packages/8f/ce/5b97c866656fa0d706e69acf6a79635837538599f98761756590c65e4a37/huawei-lte-api-1.11.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/huawei-lte-api-1.11.0"

LICENSE="LGPL-3"
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
