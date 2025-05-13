# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python port of Inquirerjs A collection of common interactive commandline user interfaces"
HOMEPAGE="https://github.com/kazhala/InquirerPy"
SRC_URI="https://files.pythonhosted.org/packages/64/73/7570847b9da026e07053da3bbe2ac7ea6cde6bb2cbd3c7a5a950fa0ae40b/InquirerPy-0.3.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/prompt-toolkit-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/prompt-toolkit-3.0.1[${PYTHON_USEDEP}]
	<dev-python/pfzy-0.4.0[${PYTHON_USEDEP}]
	>=dev-python/pfzy-0.3.1[${PYTHON_USEDEP}]
"
