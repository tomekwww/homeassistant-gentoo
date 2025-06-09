# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Tool to read data from Rainforest Legacy Eagle"
HOMEPAGE="https://github.com/hastarin/eagle100"
SRC_URI="https://files.pythonhosted.org/packages/cc/c0/12089ffe32aa4f5c98e74ae8d1953a6670d498a0db75384ae3508efe7796/eagle100-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/eagle100-0.1.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
