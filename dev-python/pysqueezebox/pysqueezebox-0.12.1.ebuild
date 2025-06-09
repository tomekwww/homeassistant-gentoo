# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous library to control Logitech Media Server"
HOMEPAGE="https://pypi.org/project/pysqueezebox/"
SRC_URI="https://files.pythonhosted.org/packages/c5/3a/40e64d5d338e75945afc3b1483444fe333be708ae444c36f871cd8b45c5b/pysqueezebox-0.12.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysqueezebox-0.12.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/async-timeout[${PYTHON_USEDEP}]
"
