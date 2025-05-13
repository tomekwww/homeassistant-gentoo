# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python interface for the AlarmDecoder AD2 family of alarm devices which includes the AD2USB AD2SERIAL and AD2PI"
HOMEPAGE="http://github.com/nutechsoftware/alarmdecoder"
SRC_URI="https://files.pythonhosted.org/packages/5d/be/5b656ba9b2ea5be368735f4c389df268ce572597d86716fb5bf608cd76ab/alarmdecoder-1.13.12.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyserial-2.7.0[${PYTHON_USEDEP}]
"
