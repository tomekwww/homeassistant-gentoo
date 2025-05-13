# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API to utilise the Somfy Synergy JsonRPC API"
HOMEPAGE="http://github.com/bendews/somfy-mylink-synergy"
SRC_URI="https://files.pythonhosted.org/packages/5e/11/6d547c1e97f5117d8f6f9376d72c465a322932a5bc4a0727e69fea163511/somfy_mylink_synergy-1.0.6.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
