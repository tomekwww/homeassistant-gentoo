# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Discover devices that respond on port 30303"
HOMEPAGE="https://pypi.org/project/discovery30303/"
SRC_URI="https://files.pythonhosted.org/packages/26/21/1833dda91f5832bded0a9043508efd53c5931d98a6851c98b07e07f1e074/discovery30303-0.3.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
