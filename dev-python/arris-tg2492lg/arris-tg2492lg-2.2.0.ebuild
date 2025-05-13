# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python client for the Arris TG2492LG"
HOMEPAGE="https://github.com/vanbalken/arris-tg2492lg"
SRC_URI="https://files.pythonhosted.org/packages/8f/52/a938f1178bba2c6480d92cb607f883f26f397c72ae5069015c33bcdd8d88/arris-tg2492lg-2.2.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
