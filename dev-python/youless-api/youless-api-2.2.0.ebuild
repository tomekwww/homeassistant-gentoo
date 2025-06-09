# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A bridge for python to the YouLess sensor"
HOMEPAGE="https://github.com/gjong/youless-python-bridge"
SRC_URI="https://files.pythonhosted.org/packages/63/dd/5b7a6b1b64c190a51f8fdc3e1797fdec883c5eda4e4072fcc58918e0e763/youless_api-2.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/youless_api-2.2.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
