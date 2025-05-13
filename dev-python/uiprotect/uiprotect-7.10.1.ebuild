# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for Unifi Protect Unofficial"
HOMEPAGE="https://pypi.org/project/uiprotect/"
SRC_URI="https://files.pythonhosted.org/packages/9d/ab/4b90def6f9c8660b10c9bb351bfa2d77d1b383a9055b7c481a15355bfde9/uiprotect-7.10.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiofiles-24.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.10.0[${PYTHON_USEDEP}]
	>=dev-python/aioshutil-1.3.0[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-3.0.1[${PYTHON_USEDEP}]
	>=dev-python/convertertools-0.5.0[${PYTHON_USEDEP}]
	>=dev-python/dateparser-1.1.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.15[${PYTHON_USEDEP}]
	>=dev-python/packaging-23.0.0[${PYTHON_USEDEP}]
	>=dev-python/pillow-10.0.0[${PYTHON_USEDEP}]
	>=dev-python/platformdirs-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/propcache-0.0.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-2.10.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-extra-types-2.10.1[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-2.6.0[${PYTHON_USEDEP}]
	>=dev-python/rich-10.0.0[${PYTHON_USEDEP}]
	<dev-python/rich-11.0.0[${PYTHON_USEDEP}]
	>=dev-python/typer-0.12.3[${PYTHON_USEDEP}]
	<dev-python/typer-0.13.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.9.0[${PYTHON_USEDEP}]
"
