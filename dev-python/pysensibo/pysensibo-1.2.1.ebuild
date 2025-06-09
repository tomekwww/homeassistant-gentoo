# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="asynciofriendly python API for Sensibo"
HOMEPAGE="https://github.com/andrey-git/pysensibo"
SRC_URI="https://files.pythonhosted.org/packages/74/c3/9a35f6610020357201215d42b5280136adfab3b0ed778c21d159304d9b75/pysensibo-1.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysensibo-1.2.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.10.0[${PYTHON_USEDEP}]
"
