# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An asynchronous serial port library of Python"
HOMEPAGE="https://github.com/changyuheng/aioserial"
SRC_URI="https://files.pythonhosted.org/packages/9b/db/54ec487184e5d0d5c257ccf9de20b0f446e14cc5a99b27698ea5b8138ece/aioserial-1.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioserial-1.3.0"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyserial[${PYTHON_USEDEP}]
"
