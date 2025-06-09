# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python class to integrate Boto3s Cognito client so it is easy to login users With SRP support"
HOMEPAGE="https://github.com/pvizeli/pycognito"
SRC_URI="https://files.pythonhosted.org/packages/26/67/3975cf257fcc04903686ef87d39be386d894a0d8182f43d37e9cbfc9609f/pycognito-2024.5.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pycognito-2024.5.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/boto3-1.10.49[${PYTHON_USEDEP}]
	>=dev-python/envs-1.3.0[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-2.8.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.22.0[${PYTHON_USEDEP}]
"
