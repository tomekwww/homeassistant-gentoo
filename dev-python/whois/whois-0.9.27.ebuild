# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python package for retrieving WHOIS information of domains"
HOMEPAGE="https://github.com/DannyCork/python-whois/"
SRC_URI="https://files.pythonhosted.org/packages/dd/46/d94f5de31d0a2eb53df836ac950acb99299f6665cde87ae3dd526a02ff76/whois-0.9.27.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/whois-0.9.27"

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
