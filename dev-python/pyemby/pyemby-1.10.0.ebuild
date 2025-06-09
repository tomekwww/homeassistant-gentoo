# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Provides a python interface to interact with a Emby media server"
HOMEPAGE="https://github.com/mezz64/pyemby"
SRC_URI="https://files.pythonhosted.org/packages/d6/33/11cd1fadbfb3ac5e7cc037f3bbd3efb500053c33d32f9123c2fd32618b6f/pyEmby-1.10.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyEmby-1.10"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
