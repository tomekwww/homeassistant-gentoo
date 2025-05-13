# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Baidu AIP SDK"
HOMEPAGE="https://github.com/Baidu-AIP"
SRC_URI="https://files.pythonhosted.org/packages/9d/aa/23f134bcc8531a7166846c4fb17ae5ce30f8323a8f9da7d24549d39412d9/baidu-aip-1.6.6.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
