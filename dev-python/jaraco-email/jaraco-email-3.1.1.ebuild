# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Email facilities by jaraco"
HOMEPAGE="https://github.com/jaraco/jaraco.email"
SRC_URI="https://files.pythonhosted.org/packages/93/50/fa403ff5e1c41ebc3822d3d956d170f7d34ad06317a196b8d9f1adbcd695/jaraco.email-3.1.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/jaraco-text-1.3.0[${PYTHON_USEDEP}]
	dev-python/jaraco-collections[${PYTHON_USEDEP}]
	dev-python/keyring[${PYTHON_USEDEP}]
	dev-python/aiosmtpd[${PYTHON_USEDEP}]
"
