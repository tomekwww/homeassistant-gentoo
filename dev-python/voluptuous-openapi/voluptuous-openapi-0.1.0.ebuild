# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Convert voluptuous schemas to OpenAPI Schema object"
HOMEPAGE="https://pypi.org/project/voluptuous-openapi/"
SRC_URI="https://files.pythonhosted.org/packages/ba/20/ed87b130ae62076b731521b3c4bc502e6ba8cc92def09954e4e755934804/voluptuous_openapi-0.1.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/voluptuous[${PYTHON_USEDEP}]
"
