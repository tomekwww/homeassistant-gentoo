# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python One Time Password Library"
HOMEPAGE="https://github.com/pyotp/pyotp"
SRC_URI="https://files.pythonhosted.org/packages/7e/f9/4c2ec78572a2d25f669220b8b9700c1133905ff6af9bf93c010778e82c65/pyotp-2.8.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
