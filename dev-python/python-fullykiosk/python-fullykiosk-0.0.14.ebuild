# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for Fully Kiosk Browser REST API"
HOMEPAGE="https://github.com/cgarwood/python-fullykiosk"
SRC_URI="https://files.pythonhosted.org/packages/a8/f0/7311c61e62c243f5ccf0ed58c7145759011fd79e5ee3034a571ca398dd4f/python-fullykiosk-0.0.14.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python-fullykiosk-0.0.14"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
