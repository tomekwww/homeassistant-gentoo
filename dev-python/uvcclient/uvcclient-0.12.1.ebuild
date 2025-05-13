# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A remote control client for Ubiquitis UVC NVR"
HOMEPAGE="https://github.com/uilibs/uvcclient"
SRC_URI="https://files.pythonhosted.org/packages/97/66/9108fe3adb42e5575322cbe8c4083d269d843142781fc3e6a547f2997aae/uvcclient-0.12.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
