# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=flit
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Lowlevel communication layer for PRAW 4"
HOMEPAGE="https://pypi.org/project/prawcore/"
SRC_URI="https://files.pythonhosted.org/packages/8a/62/d4c99cf472205f1e5da846b058435a6a7c988abf8eb6f7d632a7f32f4a77/prawcore-2.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/prawcore-2.4.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.6.0[${PYTHON_USEDEP}]
"
