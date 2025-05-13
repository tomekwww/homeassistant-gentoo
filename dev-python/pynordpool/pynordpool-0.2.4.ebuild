# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Retrieve values from API at Nord Pool"
HOMEPAGE="https://github.com/gjohansson-ST/pynordpool"
SRC_URI="https://files.pythonhosted.org/packages/68/f0/9991882f93a55f084547ab373be191cc6a144ae40c61db03791eb1f403be/pynordpool-0.2.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.2[${PYTHON_USEDEP}]
"
