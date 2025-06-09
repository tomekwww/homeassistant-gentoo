# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library and CLI tools for interacting with buienradar"
HOMEPAGE="https://github.com/mjj4791/python-buienradar"
SRC_URI="https://files.pythonhosted.org/packages/cf/df/5f1a6469bc6d18435cfc190f4004ed67c46967571724ca5804a3cc7e1562/buienradar-1.0.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/buienradar-1.0.6"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/docopt[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/xmltodict[${PYTHON_USEDEP}]
	dev-python/vincenty[${PYTHON_USEDEP}]
"
