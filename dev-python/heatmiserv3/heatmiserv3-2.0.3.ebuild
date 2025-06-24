# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to interact with Heatmiser Themostats using V3 protocol"
HOMEPAGE="https://pypi.org/project/heatmiserv3/"
SRC_URI="https://files.pythonhosted.org/packages/63/4f/468e98d0fddefc736a2a493e69aeb6f734f5855258010eb3bfe9b7f81f60/heatmiserv3-2.0.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/heatmiserv3-2.0.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/appdirs-1.4.4[${PYTHON_USEDEP}]
	<dev-python/appdirs-2.0.0[${PYTHON_USEDEP}]
	<dev-python/pyserial-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyserial-3.5.0[${PYTHON_USEDEP}]
	<dev-python/pyserial-asyncio-0.7.0[${PYTHON_USEDEP}]
	>=dev-python/pyserial-asyncio-0.6.0[${PYTHON_USEDEP}]
	<dev-python/pyyaml-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-6.0.1[${PYTHON_USEDEP}]
	<dev-python/importlib-resources-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/importlib-resources-6.1.1[${PYTHON_USEDEP}]
"
