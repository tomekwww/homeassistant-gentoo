# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Package to connect to and retrieve data from the unofficial Smart Meter Texas API"
HOMEPAGE="https://github.com/grahamwetzler/smart-meter-texas"
SRC_URI="https://files.pythonhosted.org/packages/34/03/6a27dc5de7cd5459ee2e95807b7506bcae878f2f36387caf39632dab1178/smart_meter_texas-0.5.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/smart_meter_texas-0.5.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/asn1-2.4.1[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.8.1[${PYTHON_USEDEP}]
	>=dev-python/tenacity-8.0.1[${PYTHON_USEDEP}]
"
