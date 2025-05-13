# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="API client for the Channels app  httpsgetchannelscom"
HOMEPAGE="https://github.com/fancybits/pychannels"
SRC_URI="https://files.pythonhosted.org/packages/ae/2f/0507b87768ff74d20157bebb00207de8bb7f78e36fb8713a71c0ca45b13b/pychannels-1.2.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.0.0[${PYTHON_USEDEP}]
"
