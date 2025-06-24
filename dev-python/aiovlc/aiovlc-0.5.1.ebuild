# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Control VLC over telnet connection using asyncio"
HOMEPAGE="https://github.com/MartinHjelmare/aiovlc"
SRC_URI="https://files.pythonhosted.org/packages/21/65/bf84273a6a9c6624b90e89265f1c86383e8b15055acef3d30221672a4d04/aiovlc-0.5.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiovlc-0.5.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/rich-10.0.0[${PYTHON_USEDEP}]
	<dev-python/typer-0.13.0[${PYTHON_USEDEP}]
	>=dev-python/typer-0.12.0[${PYTHON_USEDEP}]
"
