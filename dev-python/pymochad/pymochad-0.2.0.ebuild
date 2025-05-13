# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python library for interacting with moch"
HOMEPAGE="https://pypi.org/project/pymochad/"
SRC_URI="https://files.pythonhosted.org/packages/91/d5/8a75ddd73d5cb2dc982bf141a85c5dfc2ea70210a0fbc42c8887117e7711/pymochad-0.2.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
