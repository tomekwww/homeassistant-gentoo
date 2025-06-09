# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to communicate with Medcom BLE radiation monitors"
HOMEPAGE="https://pypi.org/project/medcom-ble/"
SRC_URI="https://files.pythonhosted.org/packages/b1/0e/a818b5e53e3f03de299e7ba14c579c9ce6d5d44e7f86b9748121fdabc7f8/medcom_ble-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/medcom_ble-0.1.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bleak-0.15.1[${PYTHON_USEDEP}]
	>=dev-python/bleak-retry-connector-1.8.0[${PYTHON_USEDEP}]
"
