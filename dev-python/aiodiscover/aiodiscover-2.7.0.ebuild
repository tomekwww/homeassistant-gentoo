# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Discover hosts by arp and ptr lookup"
HOMEPAGE="https://pypi.org/project/aiodiscover/"
SRC_URI="https://files.pythonhosted.org/packages/e6/a3/610e98671b155d459d8fe4f635d418c5f8e83a4ceabc588944dc3ccf1cea/aiodiscover-2.7.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiodiscover-2.7.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiodns-3.1.1[${PYTHON_USEDEP}]
	>=dev-python/cached-ipaddress-0.2.0[${PYTHON_USEDEP}]
	>dev-python/ifaddr-0.0.0[${PYTHON_USEDEP}]
	>=dev-python/netifaces-0.11.0[${PYTHON_USEDEP}]
	>=dev-python/pyroute2-0.7.3[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
