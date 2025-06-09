# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="PyVLX is a wrapper for the Velux KLF 200 API PyVLX enables you to run scenes and or open and close velux windows"
HOMEPAGE="https://github.com/Julius2342/pyvlx"
SRC_URI="https://files.pythonhosted.org/packages/05/fa/c8ee9dc90590a513dc1bfd42c20f336bd0a8b99e81389cd42182a9f6eeb3/pyvlx-0.2.26.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyvlx-0.2.26"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/zeroconf[${PYTHON_USEDEP}]
"
