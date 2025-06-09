# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for interfacing with Motionblinds using Bluetooth Low Energy BLE"
HOMEPAGE="https://github.com/LennP/motionblindsble"
SRC_URI="https://files.pythonhosted.org/packages/ea/19/f0239089ce95afe53f3fb2ff74b1bcffef10317ff80c7a9c2db9b20cdfa8/motionblindsble-0.1.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/motionblindsble-0.1.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
