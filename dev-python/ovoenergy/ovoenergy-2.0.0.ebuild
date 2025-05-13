# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="OVO Energy"
HOMEPAGE="https://github.com/timmo001/ovoenergy"
SRC_URI="https://files.pythonhosted.org/packages/fe/1f/0b74f41fbf9c3e68addec42774f1b9a63972cd5a16f8896fcde0a0e8db31/ovoenergy-2.0.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/incremental-22.10.0[${PYTHON_USEDEP}]
	>=dev-python/typer-0.6.1[${PYTHON_USEDEP}]
	<dev-python/typer-0.13.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
"
