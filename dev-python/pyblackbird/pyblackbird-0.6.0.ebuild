# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for talking to Monoprice Blackbird 4k 8x8 HDBaseT Matrix"
HOMEPAGE="https://github.com/koolsb/pyblackbird"
SRC_URI="https://files.pythonhosted.org/packages/4c/3a/349daada8567df1ad1200ab823e931cd4886427d8e4a19c5a6609c5f2719/pyblackbird-0.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyblackbird-0.6"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyserial-3.4.0[${PYTHON_USEDEP}]
	>=dev-python/pyserial-asyncio-0.4.0[${PYTHON_USEDEP}]
"
