# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="ACME protocol implementation in Python"
HOMEPAGE="https://github.com/certbot/certbot"
SRC_URI="https://files.pythonhosted.org/packages/c9/5b/731cd971fd8fbb543be9d6e2bcba71d2d5dd01d454cb7ad9b0953fd6d21b/acme-3.3.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cryptography-43.0.0[${PYTHON_USEDEP}]
	>=dev-python/josepy-1.13.0[${PYTHON_USEDEP}]
	<dev-python/josepy-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyopenssl-25.0.0[${PYTHON_USEDEP}]
	dev-python/pyrfc3339[${PYTHON_USEDEP}]
	>=dev-python/pytz-2019.3.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.20.0[${PYTHON_USEDEP}]
"
