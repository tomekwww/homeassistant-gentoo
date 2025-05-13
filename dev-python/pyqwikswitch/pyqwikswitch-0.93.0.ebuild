# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to interface Qwikswitch USB Hub"
HOMEPAGE="https://github.com/kellerza/pyqwikswitch"
SRC_URI="https://files.pythonhosted.org/packages/06/e6/05622cf9d1a4febdef9a7cd5c8988b83d086be7ea0f4def78aa0541d5a21/pyqwikswitch-0.93.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
