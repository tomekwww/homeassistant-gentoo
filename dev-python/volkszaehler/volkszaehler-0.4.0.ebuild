# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Wrapper for interacting with the Volkszahler API"
HOMEPAGE="https://github.com/home-assistant-ecosystem/python-volkszaehler"
SRC_URI="https://files.pythonhosted.org/packages/0e/50/70b75ff8175aeec360e666ebd95b6649178875f7f832e1aecfb0c16aa014/volkszaehler-0.4.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
