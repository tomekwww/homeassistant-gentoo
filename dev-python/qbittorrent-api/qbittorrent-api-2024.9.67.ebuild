# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python client for qBittorrent v41 Web API"
HOMEPAGE="https://pypi.org/project/qbittorrent-api/"
SRC_URI="https://files.pythonhosted.org/packages/c6/33/b72fe2cca34c084f9206456add35752f003c4e77db47696efb6d7b9a3425/qbittorrent_api-2024.9.67.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/qbittorrent_api-2024.9.67"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/packaging[${PYTHON_USEDEP}]
	>=dev-python/requests-2.16.0[${PYTHON_USEDEP}]
	>=dev-python/urllib3-1.24.2[${PYTHON_USEDEP}]
"
