# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for controlling Panasonic BluRay players"
HOMEPAGE="https://github.com/u1f35c/python-panacotta"
SRC_URI="https://files.pythonhosted.org/packages/4b/98/55d40ead09def71c6c0a0d619d24d1b14a3f2b67e0124613b77628b40d4b/panacotta-0.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
