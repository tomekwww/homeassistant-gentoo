# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Official Python API client for Discogs"
HOMEPAGE="https://github.com/discogs/discogs_client"
SRC_URI="https://files.pythonhosted.org/packages/f1/25/466ceb79d1da1f064765eceab842dbd35a1b7fb2e8f6be75d977bc0dda67/discogs-client-2.3.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/oauthlib[${PYTHON_USEDEP}]
"
