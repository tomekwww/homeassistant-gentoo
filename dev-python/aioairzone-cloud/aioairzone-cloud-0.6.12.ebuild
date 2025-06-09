# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to control Airzone Cloud devices"
HOMEPAGE="https://pypi.org/project/aioairzone-cloud/"
SRC_URI="https://files.pythonhosted.org/packages/6f/3e/65ec64c1086d5fd68a4f04cd6ab0cdba6a86e2ec6a69a60a976219665874/aioairzone_cloud-0.6.12.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioairzone_cloud-0.6.12"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
