# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to control enphase envoy"
HOMEPAGE="https://pypi.org/project/pyenphase/"
SRC_URI="https://files.pythonhosted.org/packages/72/e7/1d3e5680a039deec2384331446758e08883a7d8c18d50a10ff7119e16eb8/pyenphase-1.26.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyenphase-1.26.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/awesomeversion-22.9.0[${PYTHON_USEDEP}]
	>=dev-python/envoy-utils-0.0.1[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.24.0[${PYTHON_USEDEP}]
	>=dev-python/lxml-4.9.2[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.10.0[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-2.7.0[${PYTHON_USEDEP}]
	>=dev-python/tenacity-8.2.2[${PYTHON_USEDEP}]
	<dev-python/tenacity-10.0.0[${PYTHON_USEDEP}]
"
