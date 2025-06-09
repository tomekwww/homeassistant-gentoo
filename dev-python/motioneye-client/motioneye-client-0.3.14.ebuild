# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="motionEye client library Python Package"
HOMEPAGE="https://github.com/dermotduffy/motioneye-client"
SRC_URI="https://files.pythonhosted.org/packages/41/4e/48b3a9ed9fb8e87d05f57d2a1a9ca61386ec81c2680a637a94609cc82ecf/motioneye-client-0.3.14.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/motioneye-client-0.3.14"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
"
