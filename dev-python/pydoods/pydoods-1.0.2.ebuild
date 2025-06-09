# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python wrapper for the DOODS image detection service"
HOMEPAGE="https://github.com/snowzach/pydoods"
SRC_URI="https://files.pythonhosted.org/packages/ea/8a/67138b6194ec75dade4eab6e3d29372395cdf0d9d7804040f73522d3775b/pydoods-1.0.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pydoods-1.0.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
