# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for accessing information from Samsung FamilyHub fridges locally"
HOMEPAGE="https://github.com/Klathmon/python-family-hub-local"
SRC_URI="https://files.pythonhosted.org/packages/e1/c8/4191d59530660292eea7c0633e7d0a77d08fd216672467279be106b3b6f9/python-family-hub-local-0.0.2.zip -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
