# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python CoAP library"
HOMEPAGE="https://pypi.org/project/aiocoap/"
SRC_URI="https://files.pythonhosted.org/packages/28/76/de52f7fa51ddbb5255f7b80d8965903bfa718420ac5d21b0852f5d81c1b1/aiocoap-0.4.14.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
