# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python SEPA XML implementations"
HOMEPAGE="https://github.com/raphaelm/python-sepaxml"
SRC_URI="https://files.pythonhosted.org/packages/ad/89/6ebe206cc660d840183183a940c7d39c134c28841de4f2126584f6aa54a9/sepaxml-2.6.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/sepaxml-2.6.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/xmlschema[${PYTHON_USEDEP}]
	dev-python/text-unidecode[${PYTHON_USEDEP}]
"
