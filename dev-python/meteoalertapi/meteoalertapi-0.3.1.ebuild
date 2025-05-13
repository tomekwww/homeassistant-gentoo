# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A small api to get alerting messages from extreme weather in Europe from httpswwwmeteoalarmorg"
HOMEPAGE="https://github.com/rolfberkenbosch/meteoalert-api"
SRC_URI="https://files.pythonhosted.org/packages/58/38/e0d7304ff36a4227288fce363054978f7af92abf021d04c5817bf6caa8dd/meteoalertapi-0.3.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/xmltodict[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
"
