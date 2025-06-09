# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for the Quby ToonAPI"
HOMEPAGE="https://github.com/frenck/python-toonapi"
SRC_URI="https://files.pythonhosted.org/packages/0f/fa/718b5c81aa7ecba08370993a348ba6f6d6a6eb843c9bf90fe74dfa3e353c/toonapi-0.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/toonapi-0.3.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
