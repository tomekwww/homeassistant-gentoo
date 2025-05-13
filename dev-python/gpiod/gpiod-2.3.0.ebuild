# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python bindings for libgpiod"
HOMEPAGE="https://pypi.org/project/gpiod/"
SRC_URI="https://files.pythonhosted.org/packages/8f/74/cb43c6e2fe74cf1567160ccbf54db176f72481e5ac58567684a262672c7c/gpiod-2.3.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
