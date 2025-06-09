# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="The official Python client for Ollama"
HOMEPAGE="https://pypi.org/project/ollama/"
SRC_URI="https://files.pythonhosted.org/packages/b0/6d/dc77539c735bbed5d0c873fb029fb86aa9f0163df169b34152914331c369/ollama-0.4.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ollama-0.4.7"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/httpx-0.29.0[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.27.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-2.9.0[${PYTHON_USEDEP}]
	<dev-python/pydantic-3.0.0[${PYTHON_USEDEP}]
"
