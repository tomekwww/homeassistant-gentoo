# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library for interfacing with a HaywardGoldline AquaLogicProLogic pool controller"
HOMEPAGE="https://github.com/swilson/aqualogic"
SRC_URI="https://files.pythonhosted.org/packages/b2/13/842776c1314805095df2588b0ec4c12fb5b1684a14bdbc14a12f056dc3db/aqualogic-2.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aqualogic-2.6"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
