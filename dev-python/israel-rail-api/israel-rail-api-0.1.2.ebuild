# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Israeli Rail unofficial API"
HOMEPAGE="https://github.com/sh0oki/israel-rail-api"
SRC_URI="https://files.pythonhosted.org/packages/51/c9/127a80ce8ef6d9aae2e78d04e8e0cb67eca40e0659bef81672bc46173092/israel-rail-api-0.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/israel-rail-api-0.1.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
