# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="SoCo Sonos Controller is a simple library to control Sonos speakers"
HOMEPAGE="https://pypi.org/project/soco/"
SRC_URI="https://files.pythonhosted.org/packages/9d/98/f9d49da862fb6a62e34b287c263592fcb5ab8d0aebdba5eccbdf419bab22/soco-0.30.9.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/soco-0.30.9"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/xmltodict[${PYTHON_USEDEP}]
	dev-python/ifaddr[${PYTHON_USEDEP}]
	dev-python/appdirs[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
"
