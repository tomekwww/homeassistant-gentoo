# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="IKEA TrdfriTradfri API Control and observe your lights from Python"
HOMEPAGE="https://github.com/home-assistant-libs/pytradfri"
SRC_URI="https://files.pythonhosted.org/packages/8b/7a/8d48e116ca437c8737a748377577eed289d45d159ae0a4b67b62c2043b32/pytradfri-9.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pytradfri-9.0.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiocoap-0.5.5[${PYTHON_USEDEP}]
	<dev-python/dtlssocket-0.2.12[${PYTHON_USEDEP}]
"
