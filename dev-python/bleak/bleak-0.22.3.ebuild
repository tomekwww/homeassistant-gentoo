# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Bluetooth Low Energy platform Agnostic Klient"
HOMEPAGE="https://github.com/hbldh/bleak"
SRC_URI="https://files.pythonhosted.org/packages/fb/96/15750b50c0018338e2cce30de939130971ebfdf4f9d6d56c960f5657daad/bleak-0.22.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/dbus-fast-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/dbus-fast-1.83.0[${PYTHON_USEDEP}]
"
