# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Control SNOOZ white noise machines"
HOMEPAGE="https://github.com/AustinBrunkhorst/pysnooz"
SRC_URI="https://files.pythonhosted.org/packages/31/32/04f0cb7c5e98cbce95b0fea7ae61ebdf08320276ded53423130e22180aad/pysnooz-0.8.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysnooz-0.8.6"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/events-0.4.0[${PYTHON_USEDEP}]
	<dev-python/events-0.5.0[${PYTHON_USEDEP}]
	>=dev-python/bleak-0.20.2[${PYTHON_USEDEP}]
	>=dev-python/bleak-retry-connector-3.0.2[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-sensor-state-data-1.5.0[${PYTHON_USEDEP}]
	>=dev-python/home-assistant-bluetooth-1.3.0[${PYTHON_USEDEP}]
	<dev-python/transitions-0.9.0[${PYTHON_USEDEP}]
	>=dev-python/transitions-0.8.11[${PYTHON_USEDEP}]
"
