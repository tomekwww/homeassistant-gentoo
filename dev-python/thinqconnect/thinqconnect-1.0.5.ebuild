# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="ThinQ Connect Python SDK"
HOMEPAGE="https://github.com/thinq-connect/pythinqconnect"
SRC_URI="https://files.pythonhosted.org/packages/36/71/4a39414f866f2eb20ac6789b18352ede1b5be2d2c0b5253d2a278918fda8/thinqconnect-1.0.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/awsiotsdk[${PYTHON_USEDEP}]
	dev-python/pyopenssl[${PYTHON_USEDEP}]
"
