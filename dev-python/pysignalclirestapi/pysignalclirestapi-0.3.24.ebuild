# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Small python library for the Signal Cli REST API"
HOMEPAGE="https://github.com/bbernhard/pysignalclirestapi"
SRC_URI="https://github.com/bbernhard/pysignalclirestapi/archive/refs/tags/0.3.24.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysignalclirestapi-0.3.24"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"
