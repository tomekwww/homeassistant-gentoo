# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Provides a python interface to interact with the Webmin XMLRPC API"
HOMEPAGE="https://pypi.org/project/webmin-xmlrpc/"
SRC_URI="https://files.pythonhosted.org/packages/59/89/1c93c5dcc92fa562239001ac9484a11e51f220b40b59fb35fb6ec362b727/webmin-xmlrpc-0.0.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/webmin-xmlrpc-0.0.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
