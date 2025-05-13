# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Models GTFS data in a database"
HOMEPAGE="https://github.com/jarondl/pygtfs"
SRC_URI="https://files.pythonhosted.org/packages/5c/86/8bc9a1b88d646a7b0e588293a9959d53ea60662c2651f47ed6c155164721/pygtfs-0.1.9.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/sqlalchemy-0.7.8[${PYTHON_USEDEP}]
	>=dev-python/pytz-2014.9.0[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/docopt[${PYTHON_USEDEP}]
"
