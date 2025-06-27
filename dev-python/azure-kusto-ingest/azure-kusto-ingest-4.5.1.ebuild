# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Kusto Ingest Client"
HOMEPAGE="https://github.com/Azure/azure-kusto-python"
SRC_URI="https://files.pythonhosted.org/packages/d8/3f/b2dec0bc7f5bbdd2f2fa9759cb0e6b5f9b135d67ad0dd12944414ffdffed/azure-kusto-ingest-4.5.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/azure-kusto-ingest-4.5.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	~dev-python/azure-kusto-data-4.5.1[${PYTHON_USEDEP}]
	<dev-python/azure-storage-blob-13.0.0[${PYTHON_USEDEP}]
	>=dev-python/azure-storage-blob-12.0.0[${PYTHON_USEDEP}]
	<dev-python/azure-storage-queue-13.0.0[${PYTHON_USEDEP}]
	>=dev-python/azure-storage-queue-12.0.0[${PYTHON_USEDEP}]
	>=dev-python/tenacity-8.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
