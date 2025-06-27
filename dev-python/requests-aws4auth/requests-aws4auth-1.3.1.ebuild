# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="AWS4 authentication for Requests"
HOMEPAGE="https://github.com/tedder/requests-aws4auth"
SRC_URI="https://files.pythonhosted.org/packages/e5/0e/af3754c15e79a6279df256b56a805f8c7512f641839f68c2aa63dafc8f3c/requests_aws4auth-1.3.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/requests_aws4auth-1.3.1"

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
