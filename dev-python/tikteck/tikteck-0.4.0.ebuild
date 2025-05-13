# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for controlling Tikteck LED bulbs"
HOMEPAGE="http://github.com/mjg59/python-tikteck"
SRC_URI="https://files.pythonhosted.org/packages/14/d2/e82e5b3c74200c757453b37f0091dea1e2cb8f0c6ec1dc46d4f081a82892/tikteck-0.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
