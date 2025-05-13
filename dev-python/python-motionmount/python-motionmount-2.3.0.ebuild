# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Control your SIGNATURE MotionMount TVM7675 Pro using Python"
HOMEPAGE="https://github.com/vogelsproducts/python-MotionMount"
SRC_URI="https://files.pythonhosted.org/packages/fc/3b/53f86c11296134c88d41b035cd9691130117cffd969c5beb4a893e0852a4/python_motionmount-2.3.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
