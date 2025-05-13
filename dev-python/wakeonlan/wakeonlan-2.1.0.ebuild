# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A small python module for wake on lan"
HOMEPAGE="https://github.com/remcohaszing/pywakeonlan"
SRC_URI="https://files.pythonhosted.org/packages/dc/40/eac9c66d5934ef99c69593cf32b75f6769aa05c034a1d9a6f3285a34120f/wakeonlan-2.1.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
