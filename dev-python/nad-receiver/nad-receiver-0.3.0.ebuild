# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to interface with NAD receivers through RS232 TCP and telnet"
HOMEPAGE="https://github.com/joopert/nad_receiver"
SRC_URI="https://files.pythonhosted.org/packages/0e/94/2cdf730855f776f476252341fe7f38c38aea55c66fbaaea6936c70e203fc/nad_receiver-0.3.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
