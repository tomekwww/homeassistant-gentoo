# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Module for interacting with OpenWrt Luci RPC interface"
HOMEPAGE="https://github.com/fbradyirl/openwrt-luci-rpc"
SRC_URI="https://files.pythonhosted.org/packages/29/30/1f2bf85a5da8791569414a8b0b38551e389f59ca34ee26d057419427325f/openwrt-luci-rpc-1.1.17.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/openwrt-luci-rpc-1.1.17"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/click-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.21.0[${PYTHON_USEDEP}]
	>=dev-python/packaging-19.1.0[${PYTHON_USEDEP}]
"
