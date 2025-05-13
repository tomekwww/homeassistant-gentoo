# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library for CLX Communications HTTP REST Messaging API"
HOMEPAGE="https://github.com/clxcommunications/sdk-xms-python"
SRC_URI="https://files.pythonhosted.org/packages/07/8f/f8a6bdf1002a701d26265b30b9dcaee3794847ca9e1fad9548582959ff63/clx-sdk-xms-1.0.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/iso8601-0.1.9[${PYTHON_USEDEP}]
	>=dev-python/requests-2.4.2[${PYTHON_USEDEP}]
"
