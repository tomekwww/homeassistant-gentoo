# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python Library for Seamless LinkPlay Device Control"
HOMEPAGE="https://pypi.org/project/python-linkplay/"
SRC_URI="https://files.pythonhosted.org/packages/18/1a/c92def9f901a87b9ea0344d2e3b96057c7421ed274dcf130b5ff5134e90f/python_linkplay-0.2.11.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python_linkplay-0.2.11"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/async-timeout-4.0.3[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.5[${PYTHON_USEDEP}]
	>=dev-python/appdirs-1.4.4[${PYTHON_USEDEP}]
	>=dev-python/async-upnp-client-0.36.2[${PYTHON_USEDEP}]
	>=dev-python/deprecated-1.2.14[${PYTHON_USEDEP}]
	>=dev-python/aiofiles-23.1.0[${PYTHON_USEDEP}]
"
