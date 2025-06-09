# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Communication with Lektricos chargers"
HOMEPAGE="https://pypi.org/project/lektricowifi/"
SRC_URI="https://files.pythonhosted.org/packages/2e/20/b93f257cd08132d15062c32eb4793cfa029b361eea21d4bcb90273bf5260/lektricowifi-0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/lektricowifi-0.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/async-timeout-4.0.2[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.27.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-1.10.17[${PYTHON_USEDEP}]
"
