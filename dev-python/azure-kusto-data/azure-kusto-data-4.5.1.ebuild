# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Kusto Data Client"
HOMEPAGE="https://github.com/Azure/azure-kusto-python"
SRC_URI="https://files.pythonhosted.org/packages/a4/67/0dfd1ebb1a1ecf75a816d2e1b3c9f5349442dc23d78d7b6b49ee7ffc0482/azure-kusto-data-4.5.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/azure-kusto-data-4.5.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/python-dateutil-2.8.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.13.0[${PYTHON_USEDEP}]
	>=dev-python/azure-identity-1.5.0[${PYTHON_USEDEP}]
	<dev-python/azure-identity-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/msal-1.9.0[${PYTHON_USEDEP}]
	<dev-python/msal-2.0.0[${PYTHON_USEDEP}]
	<dev-python/ijson-4.1.0[${PYTHON_USEDEP}]
	>=dev-python/azure-core-1.11.0[${PYTHON_USEDEP}]
	<dev-python/azure-core-2.0.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	<dev-python/asgiref-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/asgiref-3.2.3[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
