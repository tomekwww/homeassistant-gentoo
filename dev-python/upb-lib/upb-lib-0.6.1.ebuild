# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library for interacting with UPB PIM"
HOMEPAGE="https://pypi.org/project/upb-lib/"
SRC_URI="https://files.pythonhosted.org/packages/8b/fa/8579213441618aed56b621cc06de85052aa5e411680a45a52ce8b0830e12/upb_lib-0.6.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyserial-asyncio-fast-0.11.0[${PYTHON_USEDEP}]
	>=dev-python/pytz-2021.0.0[${PYTHON_USEDEP}]
"
