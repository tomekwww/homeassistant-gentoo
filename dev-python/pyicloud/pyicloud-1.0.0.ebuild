# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="PyiCloud is a module which allows pythonistas to interact with iCloud webservices"
HOMEPAGE="https://github.com/picklepete/pyicloud"
SRC_URI="https://files.pythonhosted.org/packages/c9/a0/249d8717e8a083f55bb1b1085f505fb19903b7f467311cadef7454aa5f4a/pyicloud-1.0.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.24.0[${PYTHON_USEDEP}]
	>=dev-python/keyring-21.4.0[${PYTHON_USEDEP}]
	>=dev-python/keyrings-alt-3.5.2[${PYTHON_USEDEP}]
	>=dev-python/click-7.1.2[${PYTHON_USEDEP}]
	<dev-python/click-8.2.0[${PYTHON_USEDEP}]
	>=dev-python/tzlocal-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/certifi-2020.6.20[${PYTHON_USEDEP}]
"
