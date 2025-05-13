# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Tools for converting python data types"
HOMEPAGE="https://pypi.org/project/convertertools/"
SRC_URI="https://files.pythonhosted.org/packages/fb/25/dc809e43ec94a42497d95bf251018b524d1b8b8bcd35705acef2afafa832/convertertools-0.6.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
