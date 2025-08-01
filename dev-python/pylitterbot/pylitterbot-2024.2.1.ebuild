# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python package for controlling Whisker automatic robots"
HOMEPAGE="https://github.com/natekspencer/pylitterbot"
SRC_URI="https://files.pythonhosted.org/packages/63/7e/963d705e54bd8eeb2e4852ea35b8f0935affba941edefe78512ad35fda71/pylitterbot-2024.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pylitterbot-2024.2.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
	<dev-python/deepdiff-9.0.0[${PYTHON_USEDEP}]
	>=dev-python/deepdiff-6.2.1[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-2.7.0[${PYTHON_USEDEP}]
	<dev-python/pyjwt-3.0.0[${PYTHON_USEDEP}]
	<dev-python/pycognito-2025.0.0[${PYTHON_USEDEP}]
	>=dev-python/pycognito-2024.2.0[${PYTHON_USEDEP}]
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
