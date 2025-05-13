# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library to detect bad power supply on Raspberry Pi "
HOMEPAGE="https://github.com/shenxn/rpi-bad-power"
SRC_URI="https://files.pythonhosted.org/packages/93/e4/e6ab9c81148da6d1cbb7237402df6713c8b53852678285ee8ac826063347/rpi-bad-power-0.1.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
