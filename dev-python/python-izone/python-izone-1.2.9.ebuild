# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python interface to the iZone airconditioner controller"
HOMEPAGE="https://github.com/Swamp-Ig/pizone"
SRC_URI="https://files.pythonhosted.org/packages/13/45/2cae4a3edfa431becfcfee5ce51f39e07c167d369732d8e8654c1d5b9f55/python-izone-1.2.9.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python-izone-1.2.9"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.4.0[${PYTHON_USEDEP}]
	dev-python/netifaces[${PYTHON_USEDEP}]
	dev-python/async-timeout[${PYTHON_USEDEP}]
"
