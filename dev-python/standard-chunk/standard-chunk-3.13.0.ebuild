# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Standard library chunk redistribution dead battery"
HOMEPAGE="https://pypi.org/project/standard-chunk/"
SRC_URI="https://files.pythonhosted.org/packages/43/06/ce1bb165c1f111c7d23a1ad17204d67224baa69725bb6857a264db61beaf/standard_chunk-3.13.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="PSF-2"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
