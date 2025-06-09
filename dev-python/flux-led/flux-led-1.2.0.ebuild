# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library to communicate with the fluxled smart bulbs"
HOMEPAGE="https://github.com/Danielhiversen/flux_led"
SRC_URI="https://files.pythonhosted.org/packages/99/ef/7149fb51c43e6787975c5423d98cbe2eab4fc582d54465ba95274efe322d/flux_led-1.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/flux_led-1.2.0"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/webcolors[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-3.0.0[${PYTHON_USEDEP}]
"
