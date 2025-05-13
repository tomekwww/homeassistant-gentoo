# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Freedompro API"
HOMEPAGE="https://github.com/stefano055415/pyfreedompro"
SRC_URI="https://files.pythonhosted.org/packages/f9/00/13bfc10afd2bc0656159115029e59cb420419be533dc6dda47f0c45d50c1/pyfreedompro-1.1.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
