# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="HTTP2based RPC framework"
HOMEPAGE="https://grpc.io"
SRC_URI="https://files.pythonhosted.org/packages/fe/45/ff8c80a5a2e7e520d9c4d3c41484a11d33508253f6f4dd06d2c4b4158999/grpcio-1.72.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/grpcio-1.72.1"

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
