# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An Asynchronous Library for the KNX protocol Documentation httpsxknxio"
HOMEPAGE="https://pypi.org/project/xknx/"
SRC_URI="https://files.pythonhosted.org/packages/f5/77/dd8c4057a52dfbc810954d86f11f680ad465ea0bd5275930d62f4d1262b1/xknx-3.8.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cryptography-35.0.0[${PYTHON_USEDEP}]
	>=dev-python/ifaddr-0.1.7[${PYTHON_USEDEP}]
"
