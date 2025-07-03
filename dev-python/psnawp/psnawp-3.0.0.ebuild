# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API Wrapper for PlayStation Network API"
HOMEPAGE="https://github.com/isFakeAccount/psnawp"
SRC_URI="https://files.pythonhosted.org/packages/f1/7f/e063cbce5a9dbe7cd36e53277581f7e7b48b6e666ed9c39a27ac5f8017a0/psnawp-3.0.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/psnawp-3.0.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pycountry-24.6.1[${PYTHON_USEDEP}]
	<dev-python/pycountry-25.0.0[${PYTHON_USEDEP}]
	<dev-python/pyrate-limiter-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyrate-limiter-3.7.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.32.3[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.12.2[${PYTHON_USEDEP}]
	<dev-python/typing-extensions-5.0.0[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
