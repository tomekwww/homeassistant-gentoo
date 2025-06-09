# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for the P1 Monitor"
HOMEPAGE="https://github.com/klaasnicolaas/python-p1monitor"
SRC_URI="https://files.pythonhosted.org/packages/43/e8/de27b4ca135612aab352cbd8d6e2b768fea550e424d622cc32bafea27f1c/p1monitor-3.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/p1monitor-3.1.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
"
