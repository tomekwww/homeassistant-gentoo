# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to communicate with the Xiaomi Gateway"
HOMEPAGE="https://github.com/Danielhiversen/PyXiaomiGateway/"
SRC_URI="https://files.pythonhosted.org/packages/f8/86/01519a2bf11a84f543fdd6d4510bcd774968211eb8e15c4822f5bf1ba222/PyXiaomiGateway-0.14.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/PyXiaomiGateway-0.14.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cryptography-2.1.1[${PYTHON_USEDEP}]
"
