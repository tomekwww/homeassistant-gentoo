# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="InfluxDB client"
HOMEPAGE="https://github.com/influxdb/influxdb-python"
SRC_URI="https://files.pythonhosted.org/packages/86/4f/a9c524576677c1694b149e09d4fd6342e4a1d9a5f409e437168a14d6d150/influxdb-5.3.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/influxdb-5.3.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/python-dateutil-2.6.0[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	>=dev-python/requests-2.17.0[${PYTHON_USEDEP}]
	>=dev-python/six-1.10.0[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]
"
