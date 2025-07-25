# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python API client for OPNsense"
HOMEPAGE="https://pypi.org/project/pyopnsense/"
SRC_URI="https://files.pythonhosted.org/packages/d3/08/1dc0e7948764c59635a560dfd14a15266a5efdb4e628ec737bcfb6a1d59e/pyopnsense-0.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyopnsense-0.4.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pbr-1.6.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.14.2[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
