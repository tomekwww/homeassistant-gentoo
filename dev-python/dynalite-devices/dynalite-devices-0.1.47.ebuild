# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An unofficial Dynalite DyNET interface creating devices"
HOMEPAGE="https://github.com/ziv1234/python-dynalite-devices"
SRC_URI="https://files.pythonhosted.org/packages/73/a7/e5a1a7f5f026b0f9f6834783921549c1223efa3ccd76121bb7b5c2599245/dynalite_devices-0.1.47.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
