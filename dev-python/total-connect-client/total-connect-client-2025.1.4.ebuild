# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Interact with Total Connect 2 alarm systems"
HOMEPAGE="https://pypi.org/project/total-connect-client/"
SRC_URI="https://files.pythonhosted.org/packages/5e/a7/5509977a052b484229158432a6c9fc2621b345f961bc02030d4eb266741f/total_connect_client-2025.1.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pycryptodome-3.21.0[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-2.10.1[${PYTHON_USEDEP}]
	>=dev-python/zeep-4.3.1[${PYTHON_USEDEP}]
"
