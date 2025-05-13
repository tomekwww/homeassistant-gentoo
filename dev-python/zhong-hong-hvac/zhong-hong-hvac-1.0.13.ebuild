# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for interfacing with ZhongHong HVAC controller"
HOMEPAGE="https://pypi.org/project/zhong-hong-hvac/"
SRC_URI="https://files.pythonhosted.org/packages/9c/a4/634d013b082245057ca308906b3d9ae3eaa9331f9f81ddde25d54e3ef6ad/zhong_hong_hvac-1.0.13.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/attrs-23.1.0[${PYTHON_USEDEP}]
"
