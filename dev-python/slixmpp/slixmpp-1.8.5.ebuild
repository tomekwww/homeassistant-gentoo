# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Slixmpp is an elegant Python library for XMPP aka Jabber"
HOMEPAGE="https://codeberg.org/poezio/slixmpp"
SRC_URI="https://files.pythonhosted.org/packages/d7/fa/90ab79fd2fffcee8558cd8daa69543486d3f89b25b84890011ff1a6b378f/slixmpp-1.8.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/slixmpp-1.8.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiodns-1.0.0[${PYTHON_USEDEP}]
	dev-python/pyasn1[${PYTHON_USEDEP}]
	dev-python/pyasn1-modules[${PYTHON_USEDEP}]
"
