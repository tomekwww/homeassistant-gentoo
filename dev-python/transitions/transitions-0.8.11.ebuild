# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A lightweight objectoriented Python state machine implementation with many extensions"
HOMEPAGE="http://github.com/pytransitions/transitions"
SRC_URI="https://files.pythonhosted.org/packages/0b/e2/694deb6e9f8b66c6a356a738237ddec13c57ac2aaa3906e5573345bf20ea/transitions-0.8.11.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/transitions-0.8.11"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/six[${PYTHON_USEDEP}]
"
