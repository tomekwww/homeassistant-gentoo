# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Interface for forkeddaapd"
HOMEPAGE="http://github.com/uvjustin/pyforked-daapd/"
SRC_URI="https://files.pythonhosted.org/packages/db/ea/56043b70b05f3be75ffa4158c4720e9ff952edc9999ed81860a459a50706/pyforked-daapd-0.1.14.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyforked-daapd-0.1.14"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
