# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A fast version of fnv1a"
HOMEPAGE="https://pypi.org/project/fnv-hash-fast/"
SRC_URI="https://files.pythonhosted.org/packages/0d/85/ebcbccceb212bdc9b0d964609e319469075df2a7393dcad7048a333507b6/fnv_hash_fast-1.5.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/fnv_hash_fast-1.5.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/fnvhash-0.2.0[${PYTHON_USEDEP}]
	>=dev-python/fnvhash-0.1.0[${PYTHON_USEDEP}]
"
