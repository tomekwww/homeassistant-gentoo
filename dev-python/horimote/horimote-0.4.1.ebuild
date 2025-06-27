# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async API wrapper for Samsumgs settop boxes SMTG7400 and SMTG7401"
HOMEPAGE="https://github.com/benleb/horimote"
SRC_URI="https://files.pythonhosted.org/packages/7e/c9/53653eaa596939de4e14758fd63d62ae1b5e715a34abdd18ad46dfa68136/horimote-0.4.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/horimote-0.4.1"

LICENSE="MIT"
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
