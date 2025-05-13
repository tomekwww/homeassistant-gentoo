# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="access public transport information in hamburg germany"
HOMEPAGE="https://github.com/vigonotion/pygti"
SRC_URI="https://files.pythonhosted.org/packages/34/e9/3f11bff4bb9b48be80d65868edc0c1d5461c13b8234d42e8368090a65ec6/pygti-0.9.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/voluptuous[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
"
