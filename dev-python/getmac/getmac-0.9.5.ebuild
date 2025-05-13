# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Get MAC addresses of remote hosts and local interfaces"
HOMEPAGE="https://github.com/GhostofGoes/getmac"
SRC_URI="https://files.pythonhosted.org/packages/89/a8/4af8e06912cd83b1cc6493e9b5d0589276c858f7bdccaf1855df748983de/getmac-0.9.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
