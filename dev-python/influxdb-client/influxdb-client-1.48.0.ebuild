# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="InfluxDB 20 Python client library"
HOMEPAGE="https://github.com/influxdata/influxdb-client-python"
SRC_URI="https://files.pythonhosted.org/packages/11/47/b756380917cb4b968bd871fc006128e2cc9897fb1ab4bcf7d108f9601e78/influxdb_client-1.48.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/influxdb_client-1.48.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/reactivex-4.0.4[${PYTHON_USEDEP}]
	>=dev-python/certifi-14.5.14[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.5.3[${PYTHON_USEDEP}]
	>=dev-python/setuptools-21.0.0[${PYTHON_USEDEP}]
	>=dev-python/urllib3-1.26.0[${PYTHON_USEDEP}]
"
