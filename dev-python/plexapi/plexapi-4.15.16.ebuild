# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python bindings for the Plex API"
HOMEPAGE="https://github.com/pkkid/python-plexapi"
SRC_URI="https://files.pythonhosted.org/packages/2a/28/c0920a19272f30bc86ead5f546fb97f9cb09175a27b805f9410ce08aa67e/PlexAPI-4.15.16.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
