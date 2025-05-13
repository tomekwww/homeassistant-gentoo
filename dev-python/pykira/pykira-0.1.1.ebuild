# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Communicate with Kira IRIP modules"
HOMEPAGE="https://github.com/stu-gott/pykira"
SRC_URI="https://files.pythonhosted.org/packages/18/a5/55f48082e4103b3bc674a87dab1e86181c80a0e317eefb1eab08ece08cdb/pykira-0.1.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
