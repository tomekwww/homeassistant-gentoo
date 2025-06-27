# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for obtaining QNAP NAS system stats"
HOMEPAGE="https://github.com/colinodell/python-qnapstats"
SRC_URI="https://files.pythonhosted.org/packages/12/1c/2cf54f392dbbb321de80d2aa858e5c2820f52fd7afe41f2c24eb1bb165ac/qnapstats-0.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/qnapstats-0.4.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/xmltodict-0.10.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
