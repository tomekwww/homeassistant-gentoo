# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Date parsing library designed to parse dates from HTML pages"
HOMEPAGE="https://github.com/scrapinghub/dateparser"
SRC_URI="https://files.pythonhosted.org/packages/bd/3f/d3207a05f5b6a78c66d86631e60bfba5af163738a599a5b9aa2c2737a09e/dateparser-1.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/dateparser-1.2.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/python-dateutil-2.7.0[${PYTHON_USEDEP}]
	>=dev-python/pytz-2024.2.0[${PYTHON_USEDEP}]
	>=dev-python/regex-2015.6.24[${PYTHON_USEDEP}]
	>=dev-python/tzlocal-0.2.0[${PYTHON_USEDEP}]
"
