# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="https://github.com/eulemitkeule/eq3btsmart"
SRC_URI="https://files.pythonhosted.org/packages/a0/90/0f00ac53aa86813e86169f01dd3782c93c1b169c49a3ea1820dffe0a79b2/eq3btsmart-1.4.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/eq3btsmart-1.4.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bleak-0.21.0[${PYTHON_USEDEP}]
	>=dev-python/construct-2.10.68[${PYTHON_USEDEP}]
	>=dev-python/construct-typing-0.6.2[${PYTHON_USEDEP}]
"
