# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Faster zlib and gzip compatible compression and decompression by providing python bindings for the ISAL library"
HOMEPAGE="https://github.com/pycompression/python-isal"
SRC_URI="https://files.pythonhosted.org/packages/e0/1d/13e35ebdbf8c63fc16ac8d04fdd0cb1aaf44df1ca856a3304e9b53822d98/isal-1.7.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/isal-1.7.1"

LICENSE="PSF-2"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/versioningit
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
