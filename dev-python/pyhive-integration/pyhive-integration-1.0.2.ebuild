# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library to interface with the Hive API"
HOMEPAGE="https://github.com/Pyhive/pyhiveapi"
SRC_URI="https://files.pythonhosted.org/packages/74/02/97a2d82f305f5dce7658123f5a8b7e8ae6526f72d55406d99d02cf6ec108/pyhive_integration-1.0.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyhive_integration-1.0.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pre-commit[${PYTHON_USEDEP}]
	>=dev-python/boto3-1.16.10[${PYTHON_USEDEP}]
	>=dev-python/botocore-1.19.10[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/pyquery[${PYTHON_USEDEP}]
	dev-python/unasync[${PYTHON_USEDEP}]
	dev-python/loguru[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
