# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library that provides cryptographic and generalpurpose routines for Secure Systems Lab projects at NYU"
HOMEPAGE="https://pypi.org/project/securesystemslib/"
SRC_URI="https://files.pythonhosted.org/packages/f2/d4/6f0ce9503269a94c307a51827c5c9fe0aa8f6b6aaaf9af36c9c611ba65f6/securesystemslib-1.3.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
