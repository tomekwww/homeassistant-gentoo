# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API to interact with Dexcom Share API"
HOMEPAGE="https://github.com/gagebenne/pydexcom"
SRC_URI="https://files.pythonhosted.org/packages/3d/83/eef794b472bbb4a63a500f95fd5bf7ae40e46b9db313cf5c038ab245e4ae/pydexcom-0.2.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pydexcom-0.2.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.0.0[${PYTHON_USEDEP}]
"
