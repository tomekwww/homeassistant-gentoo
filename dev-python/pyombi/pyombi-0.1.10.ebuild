# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python module to retrieve information from Ombi"
HOMEPAGE="https://github.com/larssont/pyombi"
SRC_URI="https://files.pythonhosted.org/packages/e2/40/fbcd474661ac110c3b50f94151f54c8a41afe89b0e53edff037d6a6174eb/pyombi-0.1.10.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyombi-0.1.10"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
