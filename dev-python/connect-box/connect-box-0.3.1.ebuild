# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python client for interacting with Compal CH7465LG devices"
HOMEPAGE="https://github.com/home-assistant-ecosystem/python-connect-box"
SRC_URI="https://files.pythonhosted.org/packages/e2/4d/cc66743d0e22435623e8603449c5d6cc0e29e9632a3cb5a64a0486668a6c/connect_box-0.3.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
