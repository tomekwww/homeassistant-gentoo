# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Tools for converting bluetooth data and packets"
HOMEPAGE="https://pypi.org/project/bluetooth-data-tools/"
SRC_URI="https://files.pythonhosted.org/packages/43/1c/de0db28a762cbdd09f8e23f799607ff2237266a7088a7f164e66659dc916/bluetooth_data_tools-1.28.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cryptography-41.0.3[${PYTHON_USEDEP}]
"
