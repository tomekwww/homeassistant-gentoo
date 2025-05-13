# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A purepython interface for controlling Ankuoo RecSwitch MS6126"
HOMEPAGE="https://github.com/marcolertora/pyrecswitch"
SRC_URI="https://files.pythonhosted.org/packages/38/86/951d3733cbab92f6a887c662a36e548a2764b0d62136dc839594bd381941/pyrecswitch-1.0.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pycryptodome-3.6.6[${PYTHON_USEDEP}]
"
