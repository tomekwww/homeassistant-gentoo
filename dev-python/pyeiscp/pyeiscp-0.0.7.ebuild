# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for controlling Anthem Receivers"
HOMEPAGE="https://github.com/winterscar/python-eiscp"
SRC_URI="https://files.pythonhosted.org/packages/a0/7b/ea3c307460514a594785786ab447ea9a82da30047821d3fcbc10ed0e715a/pyeiscp-0.0.7.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/netifaces[${PYTHON_USEDEP}]
"
