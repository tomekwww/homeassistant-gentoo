# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to interface an SMA Solar WebConnect module"
HOMEPAGE="https://github.com/kellerza/pysma"
SRC_URI="https://files.pythonhosted.org/packages/a8/de/9a43df4bc3350f5ef7db80030e2d2c394f5f7dd58d44ee9bb9ab57e78dd6/pysma-0.7.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysma-0.7.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>dev-python/aiohttp-3.3.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>dev-python/attrs-18.0.0[${PYTHON_USEDEP}]
	<dev-python/jmespath-2.0.0[${PYTHON_USEDEP}]
"
