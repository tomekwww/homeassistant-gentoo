# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Pythonic bindings for FFmpegs libraries"
HOMEPAGE="https://github.com/PyAV-Org/PyAV"
SRC_URI="https://files.pythonhosted.org/packages/0c/9d/486d31e76784cc0ad943f420c5e05867263b32b37e2f4b0f7f22fdc1ca3a/av-13.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/av-13.1.0"

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
