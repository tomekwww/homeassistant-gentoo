# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Concurrency agnostic socket API"
HOMEPAGE="https://tiagocoutinho.github.io/connio/"
SRC_URI="https://files.pythonhosted.org/packages/19/94/e7adc24adafd1230a122a259e5680cbddd73b5b0201aa92147f8431ba8f6/connio-0.2.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
