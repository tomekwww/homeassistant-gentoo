# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An api allowing control of AC state temperature onoff mode of an Airtouch 4 controller locally over TCP"
HOMEPAGE="https://github.com/LonePurpleWolf/airtouch4pyapi"
SRC_URI="https://files.pythonhosted.org/packages/1b/e9/f16962de46563a761d12d79f697d3fa1f34210a3e2776209257c85b90430/airtouch4pyapi-1.0.8.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/airtouch4pyapi-1.0.8"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/numpy[${PYTHON_USEDEP}]
"
