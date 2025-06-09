# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library that interacts with TMB API"
HOMEPAGE="https://github.com/alemuro/tmb"
SRC_URI="https://files.pythonhosted.org/packages/80/a3/bc555206712ba21b68b8cc2a16d59307164d3321c018273c9fcdf250da1a/tmb-0.0.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/tmb-0.0.4"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
