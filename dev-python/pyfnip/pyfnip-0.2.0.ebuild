# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for FutureNow IP relaydimmer units"
HOMEPAGE="http://github.com/juhaniemi/pyfnip"
SRC_URI="https://files.pythonhosted.org/packages/7c/37/00fe9a9e6fef300a973f64b40cbb51fb5846a266d4aac06e136682fecbf3/pyfnip-0.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
