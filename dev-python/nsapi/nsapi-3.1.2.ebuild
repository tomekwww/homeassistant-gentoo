# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="api wrapper for Dutch Railways NS"
HOMEPAGE="https://pypi.org/project/nsapi/"
SRC_URI="https://files.pythonhosted.org/packages/76/a3/1033128fe3ee644743ea47702aa3907cdf802bab94c71c3f49f0fd2e0288/nsapi-3.1.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>dev-python/pytz-2018.5.0[${PYTHON_USEDEP}]
"
