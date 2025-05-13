# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Xiaomi cloud connect library"
HOMEPAGE="https://github.com/squachen/micloud"
SRC_URI="https://files.pythonhosted.org/packages/37/ac/981525150b1559d9ab3f57881d8b49e2621f4ba3be5ad8c4efdcc910445d/micloud-0.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
