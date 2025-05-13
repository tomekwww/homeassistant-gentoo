# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="pysmb is an experimental SMBCIFS library written in Python to support file sharing between Windows and Linux machines"
HOMEPAGE="https://miketeo.net/projects/pysmb"
SRC_URI="https://files.pythonhosted.org/packages/b6/65/3740b332f66c3e50bb1f67b16eb6909f048f2898941f8f0beb23e524f4ee/pysmb-1.2.11.zip -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
