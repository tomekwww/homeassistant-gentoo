# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An unofficial Python module for interacting with Srp Energy data"
HOMEPAGE="https://github.com/lamoreauxlab/srpenergy-api-client-python"
SRC_URI="https://files.pythonhosted.org/packages/8c/ab/6a3ebc0268cac7a3443416665a47e84e54946c41a047ef00a0cd6af2d814/srpenergy-1.3.6.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.22.0[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.8.0[${PYTHON_USEDEP}]
"
