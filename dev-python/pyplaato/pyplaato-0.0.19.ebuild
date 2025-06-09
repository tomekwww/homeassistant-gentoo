# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for getting Plaato Airlock and Keg data"
HOMEPAGE="https://github.com/JohNan/pyplaato"
SRC_URI="https://files.pythonhosted.org/packages/ed/5d/fd8569c2c916e240b7a41cfc1106dc5dc683cfae4743bcbb62120f7b4cff/pyplaato-0.0.19.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyplaato-0.0.19"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
