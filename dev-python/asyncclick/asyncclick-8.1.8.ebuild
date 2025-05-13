# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Composable command line interface toolkit"
HOMEPAGE="https://pypi.org/project/asyncclick/"
SRC_URI="https://files.pythonhosted.org/packages/cb/b5/e1e5fdf1c1bb7e6e614987c120a98d9324bf8edfaa5f5cd16a6235c9d91b/asyncclick-8.1.8.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/anyio-5.0.0[${PYTHON_USEDEP}]
"
