# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous library to retrieve details of your Aquacell water softener device"
HOMEPAGE="https://github.com/Jordi1990/aioaquacell"
SRC_URI="https://files.pythonhosted.org/packages/c3/6d/309044f0e1c604258cab00e3a6c07ec38a7579e1e3da7f45b2b28f2aa835/aioaquacell-0.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioaquacell-0.2.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/requests-aws4auth[${PYTHON_USEDEP}]
	dev-python/pycognito[${PYTHON_USEDEP}]
	dev-python/aws-request-signer[${PYTHON_USEDEP}]
	dev-python/aiobotocore[${PYTHON_USEDEP}]
	dev-python/botocore[${PYTHON_USEDEP}]
	dev-python/boto3[${PYTHON_USEDEP}]
	dev-python/attr[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
