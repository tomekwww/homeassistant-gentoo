# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to control Brightech Kuler Sky Bluetooth LED smart lamps"
HOMEPAGE="https://github.com/emlove/pykulersky"
SRC_URI="https://files.pythonhosted.org/packages/83/0e/5868515fb089411aa3edd1aeb8a9d19d12e0e43d375fac294286c92bec6e/pykulersky-0.5.8.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pykulersky-0.5.8"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/click-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/bleak-0.20.0[${PYTHON_USEDEP}]
"
