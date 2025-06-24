# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/elevenlabs/"
SRC_URI="https://files.pythonhosted.org/packages/dd/9b/0d3b6c74b200397cc6c2a8bb47664a6c18183e1d53750789b338ae25b337/elevenlabs-1.9.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/elevenlabs-1.9.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/httpx-0.21.2[${PYTHON_USEDEP}]
	>=dev-python/pydantic-1.9.2[${PYTHON_USEDEP}]
	<dev-python/pydantic-core-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-core-2.18.2[${PYTHON_USEDEP}]
	>=dev-python/requests-2.20.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/websockets-11.0.0[${PYTHON_USEDEP}]
"
