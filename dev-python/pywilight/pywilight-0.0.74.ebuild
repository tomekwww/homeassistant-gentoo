# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for WiLight in Home Assistant"
HOMEPAGE="https://github.com/leofig-rj/pywilight"
SRC_URI="https://files.pythonhosted.org/packages/5d/9b/21cb48ba5b1762002bf05efe57ade725b212e2d337933fb0bac3d29694d9/pywilight-0.0.74.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pywilight-0.0.74"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/ifaddr[${PYTHON_USEDEP}]
"
