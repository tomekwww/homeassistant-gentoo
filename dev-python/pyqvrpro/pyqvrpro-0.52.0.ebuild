# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="QVR Pro API wrapper"
HOMEPAGE="https://github.com/oblogic7/pyqvrpro"
SRC_URI="https://files.pythonhosted.org/packages/11/81/572fea59c62d7706dcc8540041b3217abce8b06ff018e01b06b910dfc643/pyqvrpro-0.52.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyqvrpro-0.52"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/untangle[${PYTHON_USEDEP}]
"
