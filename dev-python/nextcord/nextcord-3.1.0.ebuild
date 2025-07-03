# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python wrapper for the Discord API forked from discordpy"
HOMEPAGE="https://pypi.org/project/nextcord/"
SRC_URI="https://files.pythonhosted.org/packages/e1/c3/7b2883cca0bdbd3119b3287d3fb87a23ea2b92ef6e351b952ec6db50dade/nextcord-3.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/nextcord-3.1.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	<dev-python/audioop-lts-0.3.0[${PYTHON_USEDEP}]
	>=dev-python/audioop-lts-0.2.1[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.2.0[${PYTHON_USEDEP}]
	<dev-python/typing-extensions-5.0.0[${PYTHON_USEDEP}]
"

src_prepare() {
    sed 's/0.0.0/${PV}/g' -i pyproject.toml || die
    sed 's/, "poetry-dynamic-versioning"//g' -i pyproject.toml || die
    sed 's/poetry_dynamic_versioning.backend/poetry.core.masonry.api/g' -i pyproject.toml || die
    distutils-r1_src_prepare
}

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
