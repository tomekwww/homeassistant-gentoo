# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A wrapper for the Blue Current websocket api"
HOMEPAGE="https://pypi.org/project/bluecurrent-api/"
SRC_URI="https://files.pythonhosted.org/packages/c6/8d/c54357cdcf745ecd156058015ebfb715978dfeb95895fab2c709510ec24b/bluecurrent-api-1.2.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/bluecurrent-api-1.2.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/websockets-10.0.0[${PYTHON_USEDEP}]
	>=dev-python/pytz-2023.4.0[${PYTHON_USEDEP}]
"
