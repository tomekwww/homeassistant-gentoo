# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="TPLink LTE modem API"
HOMEPAGE="https://github.com/andtos90/tp-connected"
SRC_URI="https://files.pythonhosted.org/packages/37/5a/eb8caa554e55217b75eca12e40f3560bbd030b5303bb55aebcc8d0ff7931/tp-connected-0.0.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/tp-connected-0.0.4"

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
