# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python interface to Ziggos Mediabox XL"
HOMEPAGE="https://github.com/b10m/ziggo_mediabox_xl"
SRC_URI="https://files.pythonhosted.org/packages/ee/15/72e4acd8992bed77c4216c525237ae606c774475dad489723f7fb788412b/ziggo_mediabox_xl-1.1.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.20.0[${PYTHON_USEDEP}]
"
