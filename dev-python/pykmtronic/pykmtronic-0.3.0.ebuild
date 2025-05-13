# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library to interface with KM Tronic Web Relays"
HOMEPAGE="https://github.com/dgomes/pykmtronic"
SRC_URI="https://files.pythonhosted.org/packages/ba/c7/022e6a161ecabdf2effd685b029023be1c38db1fb540ab39288aa3737bb2/pykmtronic-0.3.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
