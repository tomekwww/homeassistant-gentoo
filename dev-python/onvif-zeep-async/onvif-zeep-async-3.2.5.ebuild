# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async Python Client for ONVIF Camera"
HOMEPAGE="http://github.com/hunterjm/python-onvif-zeep-async"
SRC_URI="https://files.pythonhosted.org/packages/60/25/a61ba701157ac932e51a81173ef88cf39e3c3d3a12f6a09da967f22c653d/onvif_zeep_async-3.2.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/onvif_zeep_async-3.2.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/httpx-0.19.0[${PYTHON_USEDEP}]
	<dev-python/httpx-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/zeep-4.2.1[${PYTHON_USEDEP}]
	<dev-python/zeep-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/ciso8601-2.1.3[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.10.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
