# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Discover Unifi Devices"
HOMEPAGE="https://github.com/uilibs/unifi-discovery"
SRC_URI="https://files.pythonhosted.org/packages/b6/5e/229f2586aef177df11f9e1f50547466696ce8f29dbe3d11f250578f8a799/unifi_discovery-1.2.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	>=dev-python/pyroute2-0.6.5[${PYTHON_USEDEP}]
"
