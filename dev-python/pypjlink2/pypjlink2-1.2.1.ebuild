# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="PJLink is a standard for controlling data projectors"
HOMEPAGE="https://github.com/benoitlouy/pypjlink"
SRC_URI="https://files.pythonhosted.org/packages/b8/50/78c8d31e89c8c90a6404580527d2d310375b2229202998cbd11a2f133d82/pypjlink2-1.2.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/appdirs[${PYTHON_USEDEP}]
"
