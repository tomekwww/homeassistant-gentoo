# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python library for speaking to Arcam receivers"
HOMEPAGE="https://github.com/elupus/arcam_fmj"
SRC_URI="https://files.pythonhosted.org/packages/ab/0f/5511e6681bde911a9c997916e95fe02b0562099e28d0d8315f49f380e432/arcam_fmj-1.8.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>dev-python/attrs-18.1.0[${PYTHON_USEDEP}]
"
