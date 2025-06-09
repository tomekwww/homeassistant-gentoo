# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A package to control MadVR Envy over IP"
HOMEPAGE="https://github.com/iloveicedgreentea/py-madvr"
SRC_URI="https://files.pythonhosted.org/packages/77/dd/6c1f9924f6a0da4b81cca11c8d996160002edf54fee0c2836e9605f73b9d/py_madvr2-1.6.32.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/py_madvr2-1.6.32"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
