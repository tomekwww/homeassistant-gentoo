# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A clean asyncfocused Python3 API for IQVIA data"
HOMEPAGE="https://github.com/bachya/pyiqvia"
SRC_URI="https://files.pythonhosted.org/packages/5c/4b/fb10324aa036a87b99ee85911887b05465a891a4ebe510749142dc0d4d42/pyiqvia-2022.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyiqvia-2022.4.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	>=dev-python/backoff-1.11.1[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
