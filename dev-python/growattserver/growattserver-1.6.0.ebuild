# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A package to talk to growatt server"
HOMEPAGE="https://github.com/indykoning/PyPi_GrowattServer"
SRC_URI="https://files.pythonhosted.org/packages/e9/89/e8cf1af441b5c815ddb2f26a89152038b859e29f4f881490bab85f1d311f/growattServer-1.6.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/growattServer-1.6.0"

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
