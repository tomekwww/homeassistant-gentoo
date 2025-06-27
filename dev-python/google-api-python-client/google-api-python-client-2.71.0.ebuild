# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Google API Client Library for Python"
HOMEPAGE="https://github.com/googleapis/google-api-python-client/"
SRC_URI="https://files.pythonhosted.org/packages/5f/b4/d1346544c512d31bf355578b4924203aa00bf9bd0c5f3d983e201fe202e9/google-api-python-client-2.71.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/google-api-python-client-2.71.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/httplib2-0.15.0[${PYTHON_USEDEP}]
	<dev-python/httplib2-1.0.0[${PYTHON_USEDEP}]
	<dev-python/google-auth-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/google-auth-1.19.0[${PYTHON_USEDEP}]
	>=dev-python/google-auth-httplib2-0.1.0[${PYTHON_USEDEP}]
	<dev-python/google-api-core-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/google-api-core-1.31.5[${PYTHON_USEDEP}]
	<dev-python/uritemplate-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/uritemplate-3.0.1[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
