# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python 3 support for Egardia  Woonveilig alarm"
HOMEPAGE="https://github.com/jeroenterheerdt/python-egardia"
SRC_URI="https://files.pythonhosted.org/packages/28/f7/e04524ad192d982e02d5430b07f39ad2193e43215b71122e47490bc1cd14/pythonegardia-1.0.52.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
