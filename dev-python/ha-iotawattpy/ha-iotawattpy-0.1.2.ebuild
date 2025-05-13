# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for the IoTaWatt Energy device"
HOMEPAGE="https://github.com/gtdiehl/iotawattpy"
SRC_URI="https://files.pythonhosted.org/packages/d9/17/78c760a97e780179bc6c3c822fd754f6bbccc87db2899161377ceafd047b/ha-iotawattpy-0.1.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/httpx-0.16.1[${PYTHON_USEDEP}]
"
