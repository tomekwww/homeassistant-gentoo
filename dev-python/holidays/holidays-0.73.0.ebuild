# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Open World Holidays Framework"
HOMEPAGE="https://pypi.org/project/holidays/"
SRC_URI="https://files.pythonhosted.org/packages/46/48/6d0ef4f014d06cde97772f5cc6bf9befdfbd5b23050014de163a5e8e6848/holidays-0.73.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/python-dateutil[${PYTHON_USEDEP}]
"
