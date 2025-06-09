# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Standard library telnetlib redistribution dead battery"
HOMEPAGE="https://pypi.org/project/standard-telnetlib/"
SRC_URI="https://files.pythonhosted.org/packages/8d/06/7bf7c0ec16574aeb1f6602d6a7bdb020084362fb4a9b177c5465b0aae0b6/standard_telnetlib-3.13.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/standard_telnetlib-3.13.0"

LICENSE="PSF-2"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
