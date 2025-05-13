# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python connector for WiZ light bulbs eg SLV Play"
HOMEPAGE="https://github.com/sbidy/pywizlight"
SRC_URI="https://files.pythonhosted.org/packages/83/ff/93994458ed65462ce9dca20b2b0354350a269bec17734ae5930b6b8d08a2/pywizlight-0.6.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/click-8.2.0[${PYTHON_USEDEP}]
"
