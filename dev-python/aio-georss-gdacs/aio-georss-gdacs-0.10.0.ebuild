# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An async GeoRSS client library for GDACS feeds"
HOMEPAGE="https://github.com/exxamalte/python-aio-georss-gdacs"
SRC_URI="https://files.pythonhosted.org/packages/c4/a7/4f2b3dd991ef56d06e4a89ab057fbb6c1f2684a9603b7f87ac5528265e18/aio_georss_gdacs-0.10.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aio_georss_gdacs-0.10"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aio-georss-client-0.13.0[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.9.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
