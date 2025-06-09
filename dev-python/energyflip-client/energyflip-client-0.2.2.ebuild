# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Client for EnergyFlip"
HOMEPAGE="https://github.com/dennisschroer/energyflip-client"
SRC_URI="https://files.pythonhosted.org/packages/7d/b2/bad5ff1644beaa215e7eee7ab70934d294361f8d11a1c37acc093103119f/energyflip-client-0.2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/energyflip-client-0.2.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
