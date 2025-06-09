# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A simple package for controlling SOMA devices"
HOMEPAGE="http://wazombi.com"
SRC_URI="https://files.pythonhosted.org/packages/2f/87/177ba2eaa9cc95b10fdc19289690791f2b11604f329e8bf31baf1cf93af7/pysoma-0.0.12.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysoma-0.0.12"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
