# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="GraphQL client for Python"
HOMEPAGE="https://github.com/graphql-python/gql"
SRC_URI="https://files.pythonhosted.org/packages/34/ed/44ffd30b06b3afc8274ee2f38c3c1b61fe4740bf03d92083e43d2c17ac77/gql-3.5.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/gql-3.5.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/graphql-core-3.2.7[${PYTHON_USEDEP}]
	>=dev-python/graphql-core-3.2.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
	<dev-python/yarl-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/backoff-1.11.1[${PYTHON_USEDEP}]
	<dev-python/backoff-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/anyio-3.0.0[${PYTHON_USEDEP}]
	<dev-python/anyio-5.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
