# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async Python client to interact with internal OverKiz API eg used by Somfy TaHoma"
HOMEPAGE="https://pypi.org/project/pyoverkiz/"
SRC_URI="https://files.pythonhosted.org/packages/83/53/2620f525b73676d5904b8c223a7e65b21cab1cf1b65aff23a269c14de778/pyoverkiz-1.17.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.10.3[${PYTHON_USEDEP}]
	<dev-python/attrs-26.0.0[${PYTHON_USEDEP}]
	>=dev-python/attrs-21.2.0[${PYTHON_USEDEP}]
	>=dev-python/backoff-1.10.0[${PYTHON_USEDEP}]
	<dev-python/backoff-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/boto3-1.18.59[${PYTHON_USEDEP}]
	<dev-python/boto3-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyhumps-3.8.0[${PYTHON_USEDEP}]
	<dev-python/pyhumps-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/warrant-lite-1.0.4[${PYTHON_USEDEP}]
	<dev-python/warrant-lite-2.0.0[${PYTHON_USEDEP}]
"
