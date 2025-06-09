# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to communicate with SAJ inverters"
HOMEPAGE="https://github.com/fredericvl/pysaj"
SRC_URI="https://files.pythonhosted.org/packages/42/14/f00639c61aff0fdf42bbe3377ac75f45d2e1d158984dd6f428ee8ce5def1/pysaj-0.0.16.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysaj-0.0.16"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
