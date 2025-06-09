# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{13..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for Miele integration with Home Assistant"
HOMEPAGE="https://pypi.org/project/pymiele/"
SRC_URI="https://files.pythonhosted.org/packages/b7/24/fc88ee0741b16421fab772050aba131c1c11139b1e71ec246708a9f9e6ce/pymiele-0.5.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pymiele-0.5.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
