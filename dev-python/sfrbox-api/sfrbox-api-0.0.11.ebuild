# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="SFR Box API"
HOMEPAGE="https://github.com/hacf-fr/sfrbox-api"
SRC_URI="https://files.pythonhosted.org/packages/ee/3e/38aa31acf4f39c10a042c5644a93a29e8193b1fe2097e36c0c9336f2953f/sfrbox_api-0.0.11.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/sfrbox_api-0.0.11"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/defusedxml-0.7.1[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.23.1[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.13.1[${PYTHON_USEDEP}]
"
