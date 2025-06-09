# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Provides a python interface to interact with a hikvision camera"
HOMEPAGE="https://github.com/fbradyirl/hikvision"
SRC_URI="https://files.pythonhosted.org/packages/5c/e6/e560aff7ff2fbba434357bca1de2ae9430d87285c6f809b4545eaa783925/hikvision-0.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/hikvision-0.4"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
