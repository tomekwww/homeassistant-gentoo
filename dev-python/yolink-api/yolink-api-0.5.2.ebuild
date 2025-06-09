# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to authenticate with yolink device"
HOMEPAGE="https://github.com/YoSmart-Inc/yolink-api"
SRC_URI="https://files.pythonhosted.org/packages/8e/0b/f13bc083f8c917778458175bd86e320a8143cd5743aa06ac11ae67e426d8/yolink-api-0.5.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/yolink-api-0.5.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
	>=dev-python/aiomqtt-2.0.0[${PYTHON_USEDEP}]
	<dev-python/aiomqtt-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-1.9.0[${PYTHON_USEDEP}]
	>=dev-python/tenacity-8.1.0[${PYTHON_USEDEP}]
"
