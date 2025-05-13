# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Control Sharp Aquos SmartTVs through the IP interface"
HOMEPAGE="https://github.com/jmoore987/sharp_aquos_rc"
SRC_URI="https://files.pythonhosted.org/packages/62/20/2dc2d796625ffacd2ac7f62ab5311708013fcc6f615f663353a6163f41a7/sharp_aquos_rc-0.3.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
