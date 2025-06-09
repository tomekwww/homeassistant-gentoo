# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="IHC Python SDK"
HOMEPAGE="https://github.com/dingusdk/PythonIhcSdk"
SRC_URI="https://files.pythonhosted.org/packages/f8/78/ebea889d55bc3f359dc564856bcd14cbc7aaf411fb8fb024593e8dbbaaee/ihcsdk-2.8.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ihcsdk-2.8.5"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/cryptography[${PYTHON_USEDEP}]
"
