# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for Ampio Smog Sensors"
HOMEPAGE="https://github.com/kstaniek/python-ampio-smog-api"
SRC_URI="https://files.pythonhosted.org/packages/ba/db/69afb364f5f7203162e96144129b0742d725f5982e82f26e3e2d5b533aa6/asmog-0.0.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/asmog-0.0.6"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
