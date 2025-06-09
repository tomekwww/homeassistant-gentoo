# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An async client for connecting to Honeywells TCC RESTful API"
HOMEPAGE="https://pypi.org/project/evohome-async/"
SRC_URI="https://files.pythonhosted.org/packages/77/fc/223c8294ee0ed09d54a620993c7ac7958f890e59c1ec6d63e7d464dafc76/evohome_async-1.0.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/evohome_async-1.0.5"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.12[${PYTHON_USEDEP}]
	>=dev-python/aiozoneinfo-0.2.3[${PYTHON_USEDEP}]
	>=dev-python/voluptuous-0.15.2[${PYTHON_USEDEP}]
"
