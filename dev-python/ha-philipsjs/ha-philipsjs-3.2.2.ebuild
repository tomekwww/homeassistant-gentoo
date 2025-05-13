# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="jointSPACE API for HomeAssistant"
HOMEPAGE="https://github.com/danielperna84/ha-philipsjs"
SRC_URI="https://files.pythonhosted.org/packages/c4/e9/3de06d7d8ffd3a65119be2f4fcf9740d1bd138499efae34fccce8addeb57/ha-philipsjs-3.2.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
