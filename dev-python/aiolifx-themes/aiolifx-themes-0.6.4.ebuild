# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async library that applies color themes to LIFX lights"
HOMEPAGE="https://pypi.org/project/aiolifx-themes/"
SRC_URI="https://files.pythonhosted.org/packages/57/b2/4bcc5b4be0d35b24c8611e71bb2f9fd5e99cbd89c3486149c3995d1399b4/aiolifx_themes-0.6.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiolifx_themes-0.6.4"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiolifx-1.1.0[${PYTHON_USEDEP}]
	<dev-python/aiolifx-2.0.0[${PYTHON_USEDEP}]
"
