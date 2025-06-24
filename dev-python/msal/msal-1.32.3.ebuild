# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="The Microsoft Authentication Library MSAL for Python library enables your app to access the Microsoft Cloud by supporting authentication of users with Microsoft Azure Active Directory accounts AAD and Microsoft Accounts MSA using industry standard OAuth2 and OpenID Connect"
HOMEPAGE="https://github.com/AzureAD/microsoft-authentication-library-for-python"
SRC_URI="https://files.pythonhosted.org/packages/3f/90/81dcc50f0be11a8c4dcbae1a9f761a26e5f905231330a7cacc9f04ec4c61/msal-1.32.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/msal-1.32.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.0.0[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-1.0.0[${PYTHON_USEDEP}]
	<dev-python/pyjwt-3.0.0[${PYTHON_USEDEP}]
	<dev-python/cryptography-47.0.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.5.0[${PYTHON_USEDEP}]
"
