# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library to get the realtime transport information RTPI from Irish Rail"
HOMEPAGE="https://github.com/ttroy50/pyirishrail"
SRC_URI="https://files.pythonhosted.org/packages/3e/11/2601d6009107915b388cf7ee4bb5fd5fe92f0bee8b57b765df0dc45ba050/pyirishrail-0.0.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyirishrail-0.0.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
