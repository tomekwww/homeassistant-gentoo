# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="pyvesync is a library to manage Etekcity                 Devices Cosori Air Fryers and Levoit Air                      Purifiers run on the VeSync app"
HOMEPAGE="https://github.com/webdjoe/pyvesync"
SRC_URI="https://files.pythonhosted.org/packages/3a/1d/598640edae87cabe4484d9f33ade71698662770e8359b62404fe6739a3cd/pyvesync-2.1.18.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.20.0[${PYTHON_USEDEP}]
"
