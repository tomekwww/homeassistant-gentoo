# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="FCMGCM push notification client"
HOMEPAGE="https://pypi.org/project/firebase-messaging/"
SRC_URI="https://files.pythonhosted.org/packages/52/a0/20dc16682beff1b382ec10a9fba156f9bd5c33bfbbf227be5af437daff94/firebase_messaging-0.4.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/firebase_messaging-0.4.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.3[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.5.0[${PYTHON_USEDEP}]
	<dev-python/http-ece-1.2.0[${PYTHON_USEDEP}]
	>=dev-python/protobuf-6.30.2[${PYTHON_USEDEP}]
	<dev-python/protobuf-8.0.0[${PYTHON_USEDEP}]
"
