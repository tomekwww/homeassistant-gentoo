# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A simple interface to GPIO devices with Raspberry Pi"
HOMEPAGE="https://github.com/gpiozero/gpiozero"
SRC_URI="https://files.pythonhosted.org/packages/86/e1/88d1fde5ce042a12e231ff032ae1aace89670ad15497672b28a6eb5699e9/gpiozero-1.6.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/gpiozero-1.6.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/colorzero[${PYTHON_USEDEP}]
"
