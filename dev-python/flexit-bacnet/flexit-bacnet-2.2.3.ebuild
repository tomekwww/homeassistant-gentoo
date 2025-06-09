# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Client BACnet library for Flexit Nordic series of air handling units"
HOMEPAGE="https://pypi.org/project/flexit-bacnet/"
SRC_URI="https://files.pythonhosted.org/packages/26/29/e99f9584083ffab31db5131c46d9b5b1d8d59b561e3b2ea225cb92ccb0c1/flexit_bacnet-2.2.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/flexit_bacnet-2.2.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
