# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python sdk for Tuya Open API which provides IoT capabilities maintained by Tuya official"
HOMEPAGE="https://github.com/tuya/tuya-device-sharing-sdk"
SRC_URI="https://files.pythonhosted.org/packages/b6/95/21737fb84c23571694a41518eef425d7a31d7d4e179be0927597754d713f/tuya-device-sharing-sdk-0.2.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/paho-mqtt[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
"
