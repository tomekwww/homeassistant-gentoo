# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for TwinCAT ADS library"
HOMEPAGE="https://github.com/MrLeeh/pyads"
SRC_URI="https://files.pythonhosted.org/packages/28/2c/c0ed9c23551fe9cd8530dcf71043126ee51b941a611b86732d932d5fb62a/pyads-3.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyads-3.4.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
