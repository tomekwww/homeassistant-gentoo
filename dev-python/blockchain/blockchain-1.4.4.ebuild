# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Blockchain API library v1"
HOMEPAGE="https://github.com/blockchain/api-v1-client-python/releases/tag/1.4.3"
SRC_URI="https://files.pythonhosted.org/packages/0b/85/ca826affaeaad16506d3b19525f18cf18de394d52d4a9e645ef7dc9d59a2/blockchain-1.4.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/blockchain-1.4.4"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
