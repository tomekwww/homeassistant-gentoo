# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=flit
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Read audio file metadata"
HOMEPAGE="https://pypi.org/project/tinytag/"
SRC_URI="https://files.pythonhosted.org/packages/18/1e/90893a772800ef04ab337f5debf6adf976544d8e683bba9a26a376079814/tinytag-2.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/tinytag-2.1.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
