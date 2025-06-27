# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Small Python library for process SRP requests for AWS Cognito This library was initially included in the Warranthttpswwwgithubcomcaplesswarrant library We decided to separate it because not all projects and workfows need all of the helper classes and functions in Warrant"
HOMEPAGE="https://pypi.org/project/warrant-lite/"
SRC_URI="https://files.pythonhosted.org/packages/81/1e/af3ae70a469a399d04a87eebe29eafac5d1281de88ab6405e13c10be9eba/warrant-lite-1.0.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/warrant-lite-1.0.4"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/boto3-1.9.0[${PYTHON_USEDEP}]
	<dev-python/boto3-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/envs-1.3.0[${PYTHON_USEDEP}]
	<dev-python/envs-2.0.0[${PYTHON_USEDEP}]
	<dev-python/python-jose-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/python-jose-3.0.0[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.22.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
