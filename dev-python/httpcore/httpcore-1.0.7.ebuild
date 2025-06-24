# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A minimal lowlevel HTTP client"
HOMEPAGE="https://pypi.org/project/httpcore/"
SRC_URI="https://files.pythonhosted.org/packages/6a/41/d7d0a89eb493922c37d343b607bc1b5da7f5be7e383740b4753ad8943e90/httpcore-1.0.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/httpcore-1.0.7"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/certifi[${PYTHON_USEDEP}]
	>=dev-python/h11-0.13.0[${PYTHON_USEDEP}]
	<dev-python/h11-0.15.0[${PYTHON_USEDEP}]
"
