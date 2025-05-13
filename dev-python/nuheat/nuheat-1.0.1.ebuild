# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library that allows control of connected NuHeat Signature radiant floor thermostats"
HOMEPAGE="https://github.com/broox/python-nuheat"
SRC_URI="https://files.pythonhosted.org/packages/96/1f/89b24cfec1b477f831f9eb9f1d7acd7364c6137dbffcb9d2b617aa83496c/nuheat-1.0.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.28.1[${PYTHON_USEDEP}]
"
