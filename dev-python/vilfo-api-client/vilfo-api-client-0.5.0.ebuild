# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Simple wrapper client for the Vilfo router API"
HOMEPAGE="https://github.com/mannew/vilfo-api-client-python"
SRC_URI="https://files.pythonhosted.org/packages/e9/56/201d04ef265a0fd267169863192b2f431de6d33a154272779aac312429d6/vilfo-api-client-0.5.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/vilfo-api-client-0.5.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/getmac[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/semver[${PYTHON_USEDEP}]
"
