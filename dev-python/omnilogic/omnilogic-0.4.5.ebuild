# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Integration for the Hayward OmniLogic pool control system"
HOMEPAGE="https://github.com/djtimca/omnilogic-api"
SRC_URI="https://files.pythonhosted.org/packages/44/88/e5a53450bc1d0d81053cba476b534c44af1bff0d17670205512ef08ef8ad/omnilogic-0.4.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/omnilogic-0.4.5"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
