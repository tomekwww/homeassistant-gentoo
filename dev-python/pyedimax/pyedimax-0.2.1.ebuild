# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Interface with Edimax Smart Plugs"
HOMEPAGE="https://github.com/andreipop2005/pyedimax"
SRC_URI="https://files.pythonhosted.org/packages/e0/f0/a3173add408c4ca042eee73394602965ae5adbb3377a8e3255ae5d6efba8/pyedimax-0.2.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.0.0[${PYTHON_USEDEP}]
"
