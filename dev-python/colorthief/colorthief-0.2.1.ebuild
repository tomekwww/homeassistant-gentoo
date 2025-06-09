# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A module for grabbing the color palette from an image"
HOMEPAGE="https://github.com/fengsp/color-thief-py"
SRC_URI="https://files.pythonhosted.org/packages/b6/b2/b55b741f7a7d1299d23e1c635f00f6c57ea4d2e9b76d09e1fc5ea3ca9921/colorthief-0.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/colorthief-0.2.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
