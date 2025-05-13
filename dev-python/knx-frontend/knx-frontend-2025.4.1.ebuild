# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="KNX panel for Home Assistant"
HOMEPAGE="https://pypi.org/project/knx-frontend/"
SRC_URI="https://files.pythonhosted.org/packages/9d/f1/2e7b7bbbfd28f14bc284c96b14b3734fac151771a5c835d5cf614c50808c/knx_frontend-2025.4.1.91934.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
