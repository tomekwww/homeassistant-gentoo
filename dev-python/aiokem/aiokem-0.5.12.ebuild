# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async API for Kohler Energy Management"
HOMEPAGE="https://pypi.org/project/aiokem/"
SRC_URI="https://files.pythonhosted.org/packages/03/39/98c00bc1fab1162e788e2841ef64f53c341efb4c9d7bd1c7a05add36d845/aiokem-0.5.12.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiokem-0.5.12"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.0[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-2.10.1[${PYTHON_USEDEP}]
"
