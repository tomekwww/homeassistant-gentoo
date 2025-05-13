# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for interfacing with Xiaomi smart appliances"
HOMEPAGE="https://github.com/rytilahti/python-miio"
SRC_URI="https://files.pythonhosted.org/packages/16/8e/7e03014ed96b1d6355b1a9c22690cc7a60db0bb3444fa4a47ef4096b6ce7/python-miio-0.5.12.tar.gz -> ${P}.gh.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/pyyaml-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/android-backup-0.0.0[${PYTHON_USEDEP}]
	<dev-python/android-backup-1.0.0[${PYTHON_USEDEP}]
	<dev-python/appdirs-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/appdirs-1.0.0[${PYTHON_USEDEP}]
	dev-python/attrs[${PYTHON_USEDEP}]
	>=dev-python/click-8.0.0[${PYTHON_USEDEP}]
	<dev-python/click-8.2.0[${PYTHON_USEDEP}]
	<dev-python/construct-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/construct-2.10.56[${PYTHON_USEDEP}]
	>=dev-python/croniter-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-35.0.0[${PYTHON_USEDEP}]
	>=dev-python/defusedxml-0.0.0[${PYTHON_USEDEP}]
	<dev-python/defusedxml-1.0.0[${PYTHON_USEDEP}]
	dev-python/micloud[${PYTHON_USEDEP}]
	>=dev-python/netifaces-0.0.0[${PYTHON_USEDEP}]
	<dev-python/netifaces-1.0.0[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	>=dev-python/tqdm-4.0.0[${PYTHON_USEDEP}]
	<dev-python/tqdm-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.0.0[${PYTHON_USEDEP}]
	<dev-python/zeroconf-1.0.0[${PYTHON_USEDEP}]
"
