# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An easy to use Python wrapper for the Pterodactyl Panel API"
HOMEPAGE="https://github.com/iamkubi/pydactyl"
SRC_URI="https://files.pythonhosted.org/packages/79/9f/a29bdbf10c69ff2ef2fce032e7885b4f041b1d3518134c0d2d77fd9e98c2/py-dactyl-2.0.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.21.0[${PYTHON_USEDEP}]
"
