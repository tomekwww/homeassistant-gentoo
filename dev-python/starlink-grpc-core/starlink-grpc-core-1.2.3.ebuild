# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Core functions for Starlink gRPC communication"
HOMEPAGE="https://github.com/sparky8512/starlink-grpc-tools"
SRC_URI="https://github.com/sparky8512/starlink-grpc-tools/archive/refs/tags/v1.2.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/starlink-grpc-tools-1.2.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/grpcio-1.12.0[${PYTHON_USEDEP}]
	>=dev-python/protobuf-3.6.0[${PYTHON_USEDEP}]
	>=dev-python/yagrc-1.1.1[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.3.0[${PYTHON_USEDEP}]
"

src_prepare() {
    cp packaging/* .
    sed '9,10d' -i pyproject.toml
    echo -e "[project]\nname = \"${PN}\"\nversion = \"${PV}\"\ndescription = \"\"\nreadme = \"README.md\"\nrequires-python = \">=3.8\"" >> pyproject.toml
    distutils-r1_src_prepare
}

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
