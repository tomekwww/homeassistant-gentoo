# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library to interact with iotty CloudApi"
HOMEPAGE="https://pypi.org/project/iottycloud/"
SRC_URI="https://files.pythonhosted.org/packages/67/c9/3dbeb61e7ecd692d3f43fda6e14fd00cff70bda58448f358389d0c194b80/iottycloud-0.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/iottycloud-0.3.0"

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
