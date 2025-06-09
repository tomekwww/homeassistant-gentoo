# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An asynciobased Python3 library for interacting with WattTime"
HOMEPAGE="https://github.com/bachya/aiowatttime"
SRC_URI="https://files.pythonhosted.org/packages/53/25/0c6ae9b259a9f95ba9d77886b6ba28e28e5582b4e13903b6eb7d25caa3da/aiowatttime-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiowatttime-0.1.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
"
