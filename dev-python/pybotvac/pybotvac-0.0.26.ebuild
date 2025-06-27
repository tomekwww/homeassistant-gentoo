# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python package for controlling Neato pybotvac Connected vacuum robot"
HOMEPAGE="https://github.com/stianaske/pybotvac"
SRC_URI="https://files.pythonhosted.org/packages/b5/69/8a0e22e5366fbf83592f301f453b1b95a645d30fd6205c818b74e8fcbec2/pybotvac-0.0.26.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pybotvac-0.0.26"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/requests-oauthlib[${PYTHON_USEDEP}]
	dev-python/voluptuous[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
