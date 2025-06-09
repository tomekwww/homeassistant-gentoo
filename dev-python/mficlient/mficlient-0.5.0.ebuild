# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A remote control client for Ubiquitis UVC NVR"
HOMEPAGE="https://github.com/uilibs/mficlient"
SRC_URI="https://files.pythonhosted.org/packages/8a/bc/952163638c7cdfb0fa880f6a93d6d1cf7386c6657fb6112c91f63337043b/mficlient-0.5.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/mficlient-0.5.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.26.0[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
"
