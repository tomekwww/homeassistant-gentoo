# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A small python library for discovery and interacting with Melnor Eden etc Bluetooth water timers"
HOMEPAGE="https://pypi.org/project/melnor-bluetooth/"
SRC_URI="https://files.pythonhosted.org/packages/82/7a/c10cf5ff3ccb2b69ed94f9a5d2008d59d29780bee2cf6cb32657edb489e2/melnor_bluetooth-0.0.25.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/melnor_bluetooth-0.0.25"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/deprecated-1.2.13[${PYTHON_USEDEP}]
	>=dev-python/aioconsole-0.4.1[${PYTHON_USEDEP}]
	>=dev-python/bleak-0.15.1[${PYTHON_USEDEP}]
	>=dev-python/bleak-retry-connector-1.11.0[${PYTHON_USEDEP}]
	>=dev-python/tzdata-2022.1.0[${PYTHON_USEDEP}]
	>=dev-python/tzlocal-4.1.0[${PYTHON_USEDEP}]
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
