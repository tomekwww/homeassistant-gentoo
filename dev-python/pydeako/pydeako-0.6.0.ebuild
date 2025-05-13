# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Connect and interact with deako devices over the network locally"
HOMEPAGE="https://pypi.org/project/pydeako/"
SRC_URI="https://files.pythonhosted.org/packages/b0/d6/873941199f49ac010bd77183103d7d689b497cea4be3386b45632cf40bc6/pydeako-0.6.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/zeroconf[${PYTHON_USEDEP}]
"
