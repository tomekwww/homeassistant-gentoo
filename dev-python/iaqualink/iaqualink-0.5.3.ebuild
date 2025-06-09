# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous library for Jandy iAqualink"
HOMEPAGE="https://pypi.org/project/iaqualink/"
SRC_URI="https://files.pythonhosted.org/packages/f1/46/b6a5986573eabe5e45f2f41cc24c7ab7d0dcf2721901da90e909c57d4ff8/iaqualink-0.5.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/iaqualink-0.5.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/httpx-0.27.0[${PYTHON_USEDEP}]
"
