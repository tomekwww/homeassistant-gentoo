# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Communication library and basic testing tool for Satel Integra alarm system Communication via tcpip protocol published by SATEL"
HOMEPAGE="https://github.com/c-soft/satel_integra"
SRC_URI="https://files.pythonhosted.org/packages/83/92/990186661fc9c8273e58ca07e41ae44810c66ad4ec9a18401100e0bcf115/satel_integra-0.3.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/satel_integra-0.3.7"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/click-6.0.0[${PYTHON_USEDEP}]
	<dev-python/click-8.2.0[${PYTHON_USEDEP}]
"
