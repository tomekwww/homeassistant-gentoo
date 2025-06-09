# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Read onedimensional barcodes and QR codes from Python 2 and 3"
HOMEPAGE="https://github.com/NaturalHistoryMuseum/pyzbar/"
SRC_URI="https://github.com/NaturalHistoryMuseum/pyzbar//archive/refs/tags/v0.1.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyzbar-0.1.7"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
