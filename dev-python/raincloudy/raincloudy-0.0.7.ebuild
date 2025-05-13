# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library to communicate with Melnor RainCloud Smart Garden Watering Irrigation Timer httpswwwwmelnorcom"
HOMEPAGE="https://github.com/tchellomello/raincloudy"
SRC_URI="https://files.pythonhosted.org/packages/e8/21/25e89124757960803994308d9d4bf6ab847913f81286e63c87a3bd3318c1/raincloudy-0.0.7.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
