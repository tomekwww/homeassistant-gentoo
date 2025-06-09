# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for NOAA Tides  Currents Data and Metadata"
HOMEPAGE="https://pypi.org/project/noaa-coops/"
SRC_URI="https://files.pythonhosted.org/packages/1b/d1/a0617ae0bd29a3096e8de4134806d755ec83b5e737e85fec8f027acc2eb6/noaa_coops-0.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/noaa_coops-0.4.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.32.3[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	<dev-python/pandas-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/pandas-2.2.2[${PYTHON_USEDEP}]
	<dev-python/zeep-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/zeep-4.2.1[${PYTHON_USEDEP}]
"
