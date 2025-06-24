# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Offical Smappee dev API and MQTT python wrapper"
HOMEPAGE="https://github.com/smappee/pysmappee"
SRC_URI="https://files.pythonhosted.org/packages/89/ea/753fc91e4325eee236b213e3241adba91c14959f184372d39be1f3ee27c4/pysmappee-0.2.29.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysmappee-0.2.29"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cachetools-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/paho-mqtt-1.5.0[${PYTHON_USEDEP}]
	>=dev-python/pytz-2019.3.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.23.0[${PYTHON_USEDEP}]
	>=dev-python/requests-oauthlib-1.3.0[${PYTHON_USEDEP}]
	>=dev-python/schedule-1.1.0[${PYTHON_USEDEP}]
"
