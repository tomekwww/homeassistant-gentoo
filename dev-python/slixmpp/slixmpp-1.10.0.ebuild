# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Slixmpp is an elegant Python library for XMPP aka Jabber"
HOMEPAGE="https://pypi.org/project/slixmpp/"
SRC_URI="https://files.pythonhosted.org/packages/c6/79/0ceacbcdc5f84248a36c98e11c126494c4c262902bba69eb9bd536771f76/slixmpp-1.10.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiodns-3.2.0[${PYTHON_USEDEP}]
	>=dev-python/pyasn1-0.6.1[${PYTHON_USEDEP}]
	>=dev-python/pyasn1-modules-0.4.1[${PYTHON_USEDEP}]
"
