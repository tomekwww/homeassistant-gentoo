# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Retrieve values from API at Nord Pool"
HOMEPAGE="https://github.com/gjohansson-ST/pynordpool"
SRC_URI="https://files.pythonhosted.org/packages/78/36/66c1a1459e8805bbdcb94a9a8c07c56d9a58dc36220a06863942d505e40e/pynordpool-0.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pynordpool-0.3.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.2[${PYTHON_USEDEP}]
"
