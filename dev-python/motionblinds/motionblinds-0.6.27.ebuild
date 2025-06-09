# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for interfacing with Motion Blinds"
HOMEPAGE="https://github.com/starkillerOG/motion-blinds"
SRC_URI="https://files.pythonhosted.org/packages/af/dc/d9e554318b1b32103b16e66764d054b503ba03fb6d1178d9f2eb05cd08fc/motionblinds-0.6.27.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/motionblinds-0.6.27"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pycryptodomex[${PYTHON_USEDEP}]
"
