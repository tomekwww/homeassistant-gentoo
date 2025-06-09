# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Query Sensoterra probes using the Customer API"
HOMEPAGE="https://pypi.org/project/sensoterra/"
SRC_URI="https://files.pythonhosted.org/packages/7b/86/a62eb7206173faca0974dc1f195b2400b49b5d0f0bf4141541c8b4189086/sensoterra-2.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/sensoterra-2.0.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.27.1[${PYTHON_USEDEP}]
"
