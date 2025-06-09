# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A client to access Ondilo ICO APIs"
HOMEPAGE="https://github.com/JeromeHXP/ondilo"
SRC_URI="https://files.pythonhosted.org/packages/02/e1/889f515f8833a1113455feee5953b9069a2882fbd53d857a52437f131dcf/ondilo-0.5.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ondilo-0.5.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/requests-oauthlib[${PYTHON_USEDEP}]
	dev-python/oauthlib[${PYTHON_USEDEP}]
"
