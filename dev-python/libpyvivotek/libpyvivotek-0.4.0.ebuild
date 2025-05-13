# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Library for Vivotek IP Cameras"
HOMEPAGE="https://github.com/HarlemSquirrel/python-vivotek"
SRC_URI="https://files.pythonhosted.org/packages/d9/0d/0fa80b1b3cb707eed1a52da6f6e2fcdefeb108d0ef8219d94291af587895/libpyvivotek-0.4.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
