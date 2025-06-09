# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An asynchronous Python library to communicate with PG LAB Electronics devices over MQTT"
HOMEPAGE="https://pypi.org/project/pypglab/"
SRC_URI="https://files.pythonhosted.org/packages/d3/20/c63002471c34124f9d435ef69749557f76c6ed1fac9c1161cf0d87cd6c5b/pypglab-0.0.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pypglab-0.0.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/paho-mqtt[${PYTHON_USEDEP}]
	dev-python/voluptuous[${PYTHON_USEDEP}]
"
