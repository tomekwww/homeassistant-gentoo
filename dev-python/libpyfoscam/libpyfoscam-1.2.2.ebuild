# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Library for Foscam IP Cameras"
HOMEPAGE="https://github.com/krmarien/python-foscam"
SRC_URI="https://files.pythonhosted.org/packages/df/d6/03ac4173fcea8cb5462277d47db6c41c72dc438336735cd16bdf39c40a35/libpyfoscam-1.2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/libpyfoscam-1.2.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
