# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="iSmartGate and GogoGate2 API"
HOMEPAGE="https://pypi.org/project/ismartgate/"
SRC_URI="https://files.pythonhosted.org/packages/86/41/97fe2bc71fa5066a2e5b615eaa87ec1ae3475b164a8812bcf26747db87e0/ismartgate-5.0.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ismartgate-5.0.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/dicttoxml-1.7.4[${PYTHON_USEDEP}]
	>=dev-python/defusedxml-0.7.1[${PYTHON_USEDEP}]
	>=dev-python/pycryptodome-3.9.8[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.18.0[${PYTHON_USEDEP}]
"
