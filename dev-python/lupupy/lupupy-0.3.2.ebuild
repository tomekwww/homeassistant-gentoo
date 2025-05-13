# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python cli for Lupusec alarm panels"
HOMEPAGE="http://www.github.com/majuss/lupupy"
SRC_URI="https://files.pythonhosted.org/packages/98/00/b9c9c4d34d9341eccfcf840e5f40c35ab00fabba579217021f8d01c8e0a6/lupupy-0.3.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.12.4[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/colorlog[${PYTHON_USEDEP}]
"
