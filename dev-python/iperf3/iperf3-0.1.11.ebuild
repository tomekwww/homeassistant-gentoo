# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper around iperf3"
HOMEPAGE="https://github.com/thiezn/iperf3-python"
SRC_URI="https://files.pythonhosted.org/packages/d5/c1/ca9dee2fdd3bf403e90f949da4978ae9ba5330476f867ee8fb28f8c1c26e/iperf3-0.1.11.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/iperf3-0.1.11"

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
