# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async client for aws services using botocore and aiohttp"
HOMEPAGE="https://pypi.org/project/aiobotocore/"
SRC_URI="https://files.pythonhosted.org/packages/9d/25/4b06ea1214ddf020a28df27dc7136ac9dfaf87929d51e6f6044dd350ed67/aiobotocore-2.23.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiobotocore-2.23.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.9.2[${PYTHON_USEDEP}]
	>=dev-python/aioitertools-0.5.1[${PYTHON_USEDEP}]
	<dev-python/aioitertools-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/botocore-1.38.23[${PYTHON_USEDEP}]
	<dev-python/botocore-1.38.28[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.1.0[${PYTHON_USEDEP}]
	<dev-python/python-dateutil-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/jmespath-0.7.1[${PYTHON_USEDEP}]
	<dev-python/jmespath-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/multidict-6.0.0[${PYTHON_USEDEP}]
	<dev-python/multidict-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/wrapt-1.10.10[${PYTHON_USEDEP}]
	<dev-python/wrapt-2.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
