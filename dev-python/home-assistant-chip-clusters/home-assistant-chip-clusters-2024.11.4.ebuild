# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Pythonbase APIs and tools for CHIP"
HOMEPAGE="https://github.com/project-chip/connectedhomeip"
SRC_URI="https://github.com/project-chip/connectedhomeip/archive/refs/tags/v1.4.0.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/connectedhomeip-1.4.0.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/dacite[${PYTHON_USEDEP}]
	dev-python/aenum[${PYTHON_USEDEP}]
"
