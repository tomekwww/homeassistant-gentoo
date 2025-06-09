# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A package to control Snoos"
HOMEPAGE="https://github.com/Lash-L/python-snoo"
SRC_URI="https://files.pythonhosted.org/packages/a0/9d/1e22cd954e7034f53782768b0308562d5ed08723698015f79267c85b69f2/python_snoo-0.6.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python_snoo-0.6.6"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	>=dev-python/freenub-0.1.0[${PYTHON_USEDEP}]
	<dev-python/freenub-0.2.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.15.0[${PYTHON_USEDEP}]
	<dev-python/mashumaro-4.0.0[${PYTHON_USEDEP}]
"
