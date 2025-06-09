# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library for zigpy which communicates with TI ZNP radios"
HOMEPAGE="https://pypi.org/project/zigpy-znp/"
SRC_URI="https://files.pythonhosted.org/packages/3f/1b/0031cc3604e5044d946efb4fa4a184cbbf404272617d1fd08ddd4e41c194/zigpy_znp-0.14.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/zigpy_znp-0.14.0"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/zigpy-0.78.0[${PYTHON_USEDEP}]
	dev-python/voluptuous[${PYTHON_USEDEP}]
	dev-python/coloredlogs[${PYTHON_USEDEP}]
	dev-python/jsonschema[${PYTHON_USEDEP}]
"
