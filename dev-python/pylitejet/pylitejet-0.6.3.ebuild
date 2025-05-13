# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library for controlling a LiteJet lighting system"
HOMEPAGE="https://pypi.org/project/pylitejet/"
SRC_URI="https://files.pythonhosted.org/packages/3a/9f/d5bfcdd55ab35d5b2bb10b5f46f2a53776e0bbc941d9298237b00599c0e4/pylitejet-0.6.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyserial[${PYTHON_USEDEP}]
"
