# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library to provide a reliable communication link with LightWaveRF lights switches and TRVs"
HOMEPAGE="https://github.com/GeoffAtHome/lightwave"
SRC_URI="https://files.pythonhosted.org/packages/96/1a/7754f0a3639b3c8c7c05310de7ba67af3bf1e36a20537bde0473bbc91793/lightwave-0.24.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/lightwave-0.24"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
