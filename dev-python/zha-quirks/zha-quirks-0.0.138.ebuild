# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library implementing Zigpy quirks for ZHA in Home Assistant"
HOMEPAGE="https://pypi.org/project/zha-quirks/"
SRC_URI="https://files.pythonhosted.org/packages/f7/1a/655c61241adcc67e9d4b2c8871bd2576b3492a92a6a3956802e1d8b13a3b/zha_quirks-0.0.138.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/zha_quirks-0.0.138"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/zigpy-0.80.0[${PYTHON_USEDEP}]
"
