# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library and CLI to calculate and verify all kinds of CRC checksums"
HOMEPAGE="https://github.com/Nicoretti/crc"
SRC_URI="https://files.pythonhosted.org/packages/c2/53/559a165c83ab16ad1d4a1639de239b77894fc02585bf767da88ad4288f40/crc-4.3.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
