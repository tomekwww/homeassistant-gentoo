# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="SensorPush Cloud Home Assistant Library"
HOMEPAGE="https://github.com/sstallion/sensorpush-ha"
SRC_URI="https://files.pythonhosted.org/packages/2b/2c/958883468291ae1cb840b16d670849c4575b95e11259b75305ea16377ada/sensorpush_ha-1.3.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pydantic-2.10.0[${PYTHON_USEDEP}]
	>=dev-python/sensorpush-api-2.1.0[${PYTHON_USEDEP}]
"
