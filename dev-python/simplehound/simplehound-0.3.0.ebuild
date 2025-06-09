# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Unofficial python API for Sighthound"
HOMEPAGE="https://github.com/robmarkcole/simplehound"
SRC_URI="https://files.pythonhosted.org/packages/de/78/1149e661c8ca044418baeb3578398cc5d18efc90f1cdd04a3792f09e4d91/simplehound-0.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/simplehound-0.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
