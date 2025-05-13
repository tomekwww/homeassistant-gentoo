# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Kafka integration with asyncio"
HOMEPAGE="https://pypi.org/project/aiokafka/"
SRC_URI="https://files.pythonhosted.org/packages/7c/f9/085b37eb3819556713a7cfc9f3b3f7a2c3c1bc0c8f2809b230c7f00ee26c/aiokafka-0.10.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/async-timeout[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
"
