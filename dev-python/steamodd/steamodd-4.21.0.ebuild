# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="High level Steam API implementation with low level reusable core"
HOMEPAGE="https://github.com/Lagg/steamodd"
SRC_URI="https://files.pythonhosted.org/packages/e1/29/2514ef8c4c470c139ea73fa622204f66a63f360dd9c5563757a9078d7ec6/steamodd-4.21.tar.gz -> ${P}.gh.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
