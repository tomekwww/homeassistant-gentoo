# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python interface for the Gitter API"
HOMEPAGE="https://github.com/MichaelYusko/GitterPy"
SRC_URI="https://files.pythonhosted.org/packages/d9/5e/ac55188d172e195e600b7726b82f0baaf6cc5035198e162f8daa3d202c95/gitterpy-0.1.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/gitterpy-0.1.7"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
