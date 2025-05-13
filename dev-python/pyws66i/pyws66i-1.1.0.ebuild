# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for talking to Soundavos WS66i 6zone amplifier using the telnet protocol"
HOMEPAGE="https://github.com/ssaenger/pyws66i"
SRC_URI="https://files.pythonhosted.org/packages/bb/17/dd67a0caf020c6971ca719c01f693eff07ddbdf008a4f27ff6efe5b55f95/pyws66i-1.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
