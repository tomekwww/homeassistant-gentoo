# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Netlink library"
HOMEPAGE="https://github.com/svinota/pyroute2"
SRC_URI="https://files.pythonhosted.org/packages/29/f4/a9f665da53f6c57ac51afe493df60c9466e473f2eca62c80699798b6fc8d/pyroute2-0.7.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
