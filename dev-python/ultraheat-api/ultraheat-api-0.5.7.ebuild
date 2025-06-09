# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Reading usage data from the Landys  Gyr Ultraheat heat meter unit"
HOMEPAGE="https://github.com/vpathuis/ultraheat"
SRC_URI="https://files.pythonhosted.org/packages/16/dd/f66b69f837fc4b862cee4334a24a875d83f6b6103f02d5926364f3b26cf9/ultraheat_api-0.5.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ultraheat_api-0.5.7"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyserial[${PYTHON_USEDEP}]
"
