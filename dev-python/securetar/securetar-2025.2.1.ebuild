# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python module to handle tarfile backups"
HOMEPAGE="https://pypi.org/project/securetar/"
SRC_URI="https://files.pythonhosted.org/packages/88/5b/da5f56ad39cbb1ca49bd0d4cccde7e97ea7d01fa724fa953746fa2b32ee6/securetar-2025.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/securetar-2025.2.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/cryptography[${PYTHON_USEDEP}]
"
