# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="KIWI Lock Client Library"
HOMEPAGE="https://github.com/c7h/kiwiki_client"
SRC_URI="https://files.pythonhosted.org/packages/ec/2e/4e017331e9786bed179d07c79d56c3e460392d5a8669b0c8969e0d48efbb/kiwiki_client-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/kiwiki_client-0.1.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
