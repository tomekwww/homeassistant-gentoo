# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for interacting with luftdateninfo"
HOMEPAGE="https://github.com/home-assistant-ecosystem/python-luftdaten"
SRC_URI="https://files.pythonhosted.org/packages/20/2d/f97553b1b0493ae49e6e97a399fd78ef48cfe00f147ec5218fd902856ead/luftdaten-0.7.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/httpx-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.23.0[${PYTHON_USEDEP}]
"
