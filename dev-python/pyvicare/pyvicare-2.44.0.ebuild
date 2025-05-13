# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to communicate with the Viessmann ViCare API"
HOMEPAGE="https://pypi.org/project/PyViCare/"
SRC_URI="https://files.pythonhosted.org/packages/67/4e/e7bcf631394ab2000717b56b969b843b4cc29423fa4023e30cc6c2acc05c/pyvicare-2.44.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>dev-python/authlib-1.2.0[${PYTHON_USEDEP}]
	>=dev-python/deprecated-1.2.15[${PYTHON_USEDEP}]
	<dev-python/deprecated-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.31.0[${PYTHON_USEDEP}]
"
