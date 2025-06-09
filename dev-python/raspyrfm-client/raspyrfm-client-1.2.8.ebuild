# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to send rc signals with the RaspyRFM module"
HOMEPAGE="https://github.com/markusressel/raspyrfm-client"
SRC_URI="https://github.com/markusressel/raspyrfm-client/archive/refs/tags/v1.2.8.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/raspyrfm-client-1.2.8"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
