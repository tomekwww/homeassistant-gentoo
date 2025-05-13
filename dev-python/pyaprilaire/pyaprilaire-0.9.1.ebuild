# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/pyaprilaire/"
SRC_URI="https://files.pythonhosted.org/packages/47/cf/2ee837bb2c6afdc74769e0c55a8d09c34f0af7fa0d670bee2212ce57c6c1/pyaprilaire-0.9.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/crc-4.0.0[${PYTHON_USEDEP}]
"
