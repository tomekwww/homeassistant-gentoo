# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="System Bridge Connector"
HOMEPAGE="https://github.com/timmo001/system-bridge-connector"
SRC_URI="https://files.pythonhosted.org/packages/d2/ff/b7fb7805ec2a424aaa60a205821015fc0cdc54d60b9f96c9ccb0db60de5e/systembridgeconnector-4.1.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/incremental-24.7.2[${PYTHON_USEDEP}]
	>=dev-python/packaging-24.0.0[${PYTHON_USEDEP}]
	>=dev-python/systembridgemodels-4.2.4[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
"
