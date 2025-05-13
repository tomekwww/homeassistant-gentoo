# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="client library for wifi thermostats sold by radiothermostatcom"
HOMEPAGE="https://github.com/mhrivnak/radiotherm"
SRC_URI="https://files.pythonhosted.org/packages/b1/d8/0e0f2525777db7f32c0477c82fb7979b1c0a7f1f33eded8c286c5b0b2208/radiotherm-2.1.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
