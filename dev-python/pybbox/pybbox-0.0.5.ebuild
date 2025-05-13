# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="a simple python3 library for the Bouygues BBox Routeur API"
HOMEPAGE="https://github.com/HydrelioxGitHub/pybbox"
SRC_URI="https://files.pythonhosted.org/packages/35/bd/bc30d13b4bb44a18f9994537282c0794013cf3125683486bc9f875cf46fa/pybbox-0.0.5-alpha.zip -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
