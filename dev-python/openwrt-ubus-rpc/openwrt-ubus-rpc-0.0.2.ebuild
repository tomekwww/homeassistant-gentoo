# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="OpenWrt ubus RPC API library"
HOMEPAGE="https://github.com/Noltari/python-ubus-rpc"
SRC_URI="https://files.pythonhosted.org/packages/86/66/9748ef3e759ff9f99c0f62cd1ac698786b4f85929a20fa19167070269a1f/openwrt-ubus-rpc-0.0.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/openwrt-ubus-rpc-0.0.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
