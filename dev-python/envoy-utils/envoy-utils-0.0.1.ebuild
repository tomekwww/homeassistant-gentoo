# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python utilities for the Enphase Envoy"
HOMEPAGE="https://pypi.org/project/envoy-utils/"
SRC_URI="https://files.pythonhosted.org/packages/57/7c/341318b9c87eb55c2e3de149873a8cd0cfe1b9e659d15bce3624f05429fc/envoy_utils-0.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/envoy_utils-0.0.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/zeroconf[${PYTHON_USEDEP}]
"
