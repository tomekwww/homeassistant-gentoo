# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to interact with PrusaLink v2"
HOMEPAGE="https://pypi.org/project/pyprusalink/"
SRC_URI="https://files.pythonhosted.org/packages/95/22/0a138766bb2eaa9d5feb404f1cf8f69ff87b4520294ab147f96faa5d272d/pyprusalink-2.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyprusalink-2.1.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/httpx[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
