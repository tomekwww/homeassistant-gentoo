# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python asyncio IMAP4rev1 client library"
HOMEPAGE="https://github.com/bamthomas/aioimaplib"
SRC_URI="https://files.pythonhosted.org/packages/ee/da/a454c47fb8522e607425e15bf1f49ccfdb3d75f4071f40b63ebd49573495/aioimaplib-2.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioimaplib-2.0.1"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
