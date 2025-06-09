# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/python-picnic-api2/"
SRC_URI="https://files.pythonhosted.org/packages/11/83/043fe0f956a4e29b8e15979732a3d22d34f895b27d3c65937144d3d15cad/python_picnic_api2-1.2.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python_picnic_api2-1.2.4"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.24.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.12.2[${PYTHON_USEDEP}]
"
