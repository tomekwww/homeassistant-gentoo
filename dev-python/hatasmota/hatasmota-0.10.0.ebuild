# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{13..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python module to help parse and construct Tasmota MQTT messages"
HOMEPAGE="https://github.com/emontnemery/hatasmota"
SRC_URI="https://files.pythonhosted.org/packages/05/fb/feb4a4957facefe302dff8449d55676598875ede33d8e81627933f94f1a2/hatasmota-0.10.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/voluptuous-0.12.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.11.12[${PYTHON_USEDEP}]
"
