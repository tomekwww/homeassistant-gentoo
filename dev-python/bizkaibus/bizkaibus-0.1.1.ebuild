# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Online information for buses of Biscay bus services Basque Country Spain"
HOMEPAGE="https://github.com/UgaitzEtxebarria/BizkaibusRTPI"
SRC_URI="https://files.pythonhosted.org/packages/fc/82/dea8c37c48c9f9703a89b922b3e307dbb10ae28689e0e9b20512658e1b85/bizkaibus-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/bizkaibus-0.1.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
