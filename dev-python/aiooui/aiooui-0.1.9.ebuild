# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async OUI lookups"
HOMEPAGE="https://pypi.org/project/aiooui/"
SRC_URI="https://files.pythonhosted.org/packages/14/b7/ad0f86010bbabc4e556e98dd2921a923677188223cc524432695966f14fa/aiooui-0.1.9.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiooui-0.1.9"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
