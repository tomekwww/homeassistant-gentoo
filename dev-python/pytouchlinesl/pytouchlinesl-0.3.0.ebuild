# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An API client for Roths TouchlineSL control system"
HOMEPAGE="https://pypi.org/project/pytouchlinesl/"
SRC_URI="https://files.pythonhosted.org/packages/52/be/0797b6149a36df93ac5c51200b5a848879e7410d83c1711222680a108e57/pytouchlinesl-0.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pytouchlinesl-0.3.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/pydantic[${PYTHON_USEDEP}]
"
