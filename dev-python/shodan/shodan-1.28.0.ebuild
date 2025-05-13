# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library and commandline utility for Shodan httpsdevelopershodanio"
HOMEPAGE="https://github.com/achillean/shodan-python"
SRC_URI="https://files.pythonhosted.org/packages/fd/e3/8a76f8cb021d712ba966f7385d3635165a70222e5ca1a92a8887470dd1a0/shodan-1.28.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
