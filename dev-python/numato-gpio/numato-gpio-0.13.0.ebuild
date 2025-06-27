# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for Numato GPIO Expanders"
HOMEPAGE="https://pypi.org/project/numato-gpio/"
SRC_URI="https://files.pythonhosted.org/packages/cd/08/6012eb8cc975a0e93de65e9a0a032c2b2a345f4caef3ef4d35defb90e839/numato_gpio-0.13.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/numato_gpio-0.13.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/pyserial-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyserial-3.1.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
