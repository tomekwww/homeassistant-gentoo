# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Get data from the Azure DevOps API"
HOMEPAGE="https://github.com/timmo001/aioazuredevops"
SRC_URI="https://files.pythonhosted.org/packages/bb/99/34a331a474bda851634163c6c044ac0a18a35ad8df6bb6f97cf93ef5aa50/aioazuredevops-2.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioazuredevops-2.2.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/incremental-22.10.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
"
