# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous console and interfaces for asyncio"
HOMEPAGE="https://pypi.org/project/aioconsole/"
SRC_URI="https://files.pythonhosted.org/packages/c7/c9/c57e979eea211b10a63783882a826f257713fa7c0d6c9a6eac851e674fb4/aioconsole-0.8.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
