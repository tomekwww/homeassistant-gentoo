# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python bindings for nukiio bridges"
HOMEPAGE="https://github.com/pschmitt/pynuki"
SRC_URI="https://files.pythonhosted.org/packages/e0/15/9e281a6bba226393507852fd68fcc0eef09526137622e62e0574c22f58b1/pynuki-1.6.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pynuki-1.6.3"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.27.0[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	<dev-python/pynacl-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/pynacl-1.5.0[${PYTHON_USEDEP}]
"
