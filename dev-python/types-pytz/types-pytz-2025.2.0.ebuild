# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Typing stubs for pytz"
HOMEPAGE="https://pypi.org/project/types-pytz/"
SRC_URI="https://files.pythonhosted.org/packages/bd/72/b0e711fd90409f5a76c75349055d3eb19992c110f0d2d6aabbd6cfbc14bf/types_pytz-2025.2.0.20250516.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
