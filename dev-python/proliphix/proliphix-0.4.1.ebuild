# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="API for Proliphix nt10e network thermostat"
HOMEPAGE="https://github.com/sdague/proliphix"
SRC_URI="https://files.pythonhosted.org/packages/b1/b5/d6785b6b2a1cd0c7a9c4fd7eb2fbb0ee0084fb9c080c1e9723994c9880a3/proliphix-0.4.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/proliphix-0.4.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
