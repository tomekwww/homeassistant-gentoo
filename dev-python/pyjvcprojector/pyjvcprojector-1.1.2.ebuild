# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python library for controlling a JVC Projector over a network connection"
HOMEPAGE="https://github.com/SteveEasley/pyjvcprojector"
SRC_URI="https://files.pythonhosted.org/packages/d4/b6/4a0f964dee4e657ffae0d5b9c9b6db93f7a3c948cce538d13a10fc1eba38/pyjvcprojector-1.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyjvcprojector-1.1.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiodns-3.2.0[${PYTHON_USEDEP}]
"
