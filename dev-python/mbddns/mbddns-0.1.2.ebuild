# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Mythic Beasts Dynamic DNS updater"
HOMEPAGE="https://github.com/thinkl33t/mb-ddns"
SRC_URI="https://files.pythonhosted.org/packages/f3/6d/cc17e70fd6d347475229dbf877e9ff359a38813e3d7a8b19aaf30317ccdf/mbddns-0.1.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
