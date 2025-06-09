# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="ZIMI ZCC helper module"
HOMEPAGE="https://pypi.org/project/zcc-helper/"
SRC_URI="https://files.pythonhosted.org/packages/ab/b1/de0a67c8acac766da7fcad65eb407a3e5fc2915c25207cc65c22ecf2beb2/zcc_helper-3.5.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/zcc_helper-3.5.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
