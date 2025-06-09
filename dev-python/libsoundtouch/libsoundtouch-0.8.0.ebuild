# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Bose Soundtouch Python library"
HOMEPAGE="http://libsoundtouch.readthedocs.io"
SRC_URI="https://files.pythonhosted.org/packages/58/13/39ac33ae2d01b51b46ecdc8c05aaceb1b21bab7782e1bade24c66d1c9160/libsoundtouch-0.8.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/libsoundtouch-0.8.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/enum-compat-0.0.2[${PYTHON_USEDEP}]
	>=dev-python/websocket-client-0.40.0[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.19.1[${PYTHON_USEDEP}]
"
