# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for interacting with Schlage WiFi locks"
HOMEPAGE="https://pypi.org/project/pyschlage/"
SRC_URI="https://files.pythonhosted.org/packages/b7/60/bd80c0904a7b5bcec158207065ff90e5d151b359beedcbf24cf9017510a8/pyschlage-2025.4.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pycognito[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
"
