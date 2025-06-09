# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Opensource home automation platform running on Python 3"
HOMEPAGE="https://pypi.org/project/pyDuotecno/"
SRC_URI="https://files.pythonhosted.org/packages/07/af/d5bbd051dff3d3d8487c675445eaa867b68785bbf45003ce7307d4aad817/pyduotecno-2024.10.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyduotecno-2024.10.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
