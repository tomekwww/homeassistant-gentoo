# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Control various Nice access control products"
HOMEPAGE="https://IceBotYT.github.io/nice-go"
SRC_URI="https://files.pythonhosted.org/packages/6c/73/e4dfdbd0bca62d821755f8e1531e4109098d2f06d5167dea10bd449836a4/nice_go-1.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/nice_go-1.0.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.9.5[${PYTHON_USEDEP}]
	>=dev-python/aiobotocore-2.13.1[${PYTHON_USEDEP}]
	<dev-python/aiobotocore-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.9.4[${PYTHON_USEDEP}]
	<dev-python/yarl-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/pycognito-2024.5.1[${PYTHON_USEDEP}]
	<dev-python/pycognito-2025.0.0[${PYTHON_USEDEP}]
	<dev-python/tenacity-9.0.0[${PYTHON_USEDEP}]
	>=dev-python/tenacity-8.5.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
