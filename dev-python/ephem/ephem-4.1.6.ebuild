# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Compute positions of the planets and stars"
HOMEPAGE="http://rhodesmill.org/pyephem/"
SRC_URI="https://files.pythonhosted.org/packages/45/eb/844403865b5c861736c85196112a791c74283f27bf4496de2381eb57c085/ephem-4.1.6.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
