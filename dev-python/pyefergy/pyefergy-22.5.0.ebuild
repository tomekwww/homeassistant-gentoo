# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An API library for Efergy energy meters"
HOMEPAGE="https://github.com/tkdrob/pyefergy"
SRC_URI="https://files.pythonhosted.org/packages/bd/2a/89a26da791b94bf0b55c97c73623bf0988adaada85204bb62876c8151f2d/pyefergy-22.5.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyefergy-22.5.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.6.1[${PYTHON_USEDEP}]
	>=dev-python/iso4217-1.2.20150619[${PYTHON_USEDEP}]
	>=dev-python/types-pytz-2021.3.1[${PYTHON_USEDEP}]
	>=dev-python/codecov-2.1.13[${PYTHON_USEDEP}]
	<dev-python/codecov-3.0.0[${PYTHON_USEDEP}]
"
