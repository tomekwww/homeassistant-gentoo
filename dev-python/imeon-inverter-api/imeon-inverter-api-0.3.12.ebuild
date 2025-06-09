# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=pdm-backend
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A standalone API to collect data from the Imeon Energy Inverters Uses HTTP POSTGET"
HOMEPAGE="https://pypi.org/project/imeon-inverter-api/"
SRC_URI="https://files.pythonhosted.org/packages/45/4c/13117a385620289da5d95718dce485d63b8d3aa92bc0294fc7b216fdc883/imeon-inverter-api-0.3.12.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/imeon-inverter-api-0.3.12"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.5[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-4.0.3[${PYTHON_USEDEP}]
"
