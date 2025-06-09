# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python ecotrendista Api"
HOMEPAGE="https://github.com/Ludy87/pyecotrend-ista"
SRC_URI="https://files.pythonhosted.org/packages/0d/ba/dc4bf82741c56bd4a410a767f17d6fa10e7cc5655fe6db1fa78af7e6698e/pyecotrend-ista-3.3.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyecotrend-ista-3.3.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/dataclasses-json-0.6.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.0.0[${PYTHON_USEDEP}]
"
