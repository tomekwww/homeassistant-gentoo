# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library for getting historical and forecasted usagecost from utilities that use opowercom such as PGE"
HOMEPAGE="https://pypi.org/project/opower/"
SRC_URI="https://files.pythonhosted.org/packages/43/ae/413a6b010b8fcead005b3c55ebb559f6b0edf937694bc386700109f91c06/opower-0.12.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/opower-0.12.3"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	>=dev-python/aiozoneinfo-0.1.0[${PYTHON_USEDEP}]
	>=dev-python/arrow-1.2.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-43.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyotp-2.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
