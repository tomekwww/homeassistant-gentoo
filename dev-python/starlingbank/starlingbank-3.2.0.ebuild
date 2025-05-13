# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An unofficial python package that provides access to parts of the Starling bank API Designed to be used for personal use ie using personal access tokens"
HOMEPAGE="https://github.com/Dullage/starlingbank"
SRC_URI="https://files.pythonhosted.org/packages/74/83/904e0a8be3cb14ddb314feebc8480c021f344f4f3335969ddd29891bbafd/starlingbank-3.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
