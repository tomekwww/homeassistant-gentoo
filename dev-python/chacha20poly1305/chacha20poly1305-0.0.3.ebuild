# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Chacha20Poly1305"
HOMEPAGE="https://github.com/ph4r05/py-chacha20poly1305"
SRC_URI="https://files.pythonhosted.org/packages/38/2c/5b4eb73c5cb30ded3082af025e76f529764971c57c02b101e842ff998f63/chacha20poly1305-0.0.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/chacha20poly1305-0.0.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
