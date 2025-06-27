# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=flit
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A simple optionallyasync python inotify library focused on simplicity of use and operation and leveraging modern Python features"
HOMEPAGE="https://pypi.org/project/asyncinotify/"
SRC_URI="https://files.pythonhosted.org/packages/ab/34/65ef5a24fc286a1cb9b1293873e0d8d3d6a2048886820fcae062f0b3a7da/asyncinotify-4.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/asyncinotify-4.2.0"

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
