# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="DIDLLite Digital Item Declaration Language tools for Python"
HOMEPAGE="https://github.com/StevenLooman/python-didl-lite"
SRC_URI="https://files.pythonhosted.org/packages/dd/0a/01ec612e1585accad47edfd15d7281006f2906811353524d172825c3f3b9/python_didl_lite-1.4.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python_didl_lite-1.4.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/defusedxml-0.6.0[${PYTHON_USEDEP}]
"
