# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=pdm-backend
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python 3 API wrapper for FireServiceRotaBrandweerRooster"
HOMEPAGE="https://pypi.org/project/pyfireservicerota/"
SRC_URI="https://files.pythonhosted.org/packages/31/be/76b67576b7cbbc33c7a67d04c47d92258984b0ef6352b50ba4422c9cefbf/pyfireservicerota-0.0.46.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyfireservicerota-0.0.46"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pytz[${PYTHON_USEDEP}]
	dev-python/oauthlib[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/websocket-client[${PYTHON_USEDEP}]
"
