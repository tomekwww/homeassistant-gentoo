# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python interface to Lastfm and Librefm"
HOMEPAGE="https://pypi.org/project/pylast/"
SRC_URI="https://files.pythonhosted.org/packages/cf/2e/6e6bf26d26a2f3b8c66ddb617a854a3ca933f9ef028b1e7f7f962c0ed1c3/pylast-5.1.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/httpx[${PYTHON_USEDEP}]
"
