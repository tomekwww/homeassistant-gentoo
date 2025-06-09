# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="The official Python library for the openai API"
HOMEPAGE="https://pypi.org/project/openai/"
SRC_URI="https://files.pythonhosted.org/packages/d5/48/e767710b07acc1fca1f6b8cacd743102c71b8fdeca603876de0749ec00f1/openai-1.76.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/openai-1.76.2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/anyio-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/anyio-3.5.0[${PYTHON_USEDEP}]
	<dev-python/distro-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/distro-1.7.0[${PYTHON_USEDEP}]
	<dev-python/httpx-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.23.0[${PYTHON_USEDEP}]
	>=dev-python/jiter-0.4.0[${PYTHON_USEDEP}]
	<dev-python/jiter-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-1.9.0[${PYTHON_USEDEP}]
	<dev-python/pydantic-3.0.0[${PYTHON_USEDEP}]
	dev-python/sniffio[${PYTHON_USEDEP}]
	>dev-python/tqdm-4.0.0[${PYTHON_USEDEP}]
	<dev-python/typing-extensions-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.11.0[${PYTHON_USEDEP}]
"
