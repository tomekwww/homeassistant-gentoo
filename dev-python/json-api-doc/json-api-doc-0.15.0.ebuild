# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="JSON API to document parser"
HOMEPAGE="https://github.com/noplay/json-api-doc"
SRC_URI="https://files.pythonhosted.org/packages/82/5f/f2fea5059a8e60e38712eafbfda3fd254ca8f2c44c3b5b3dd94c398ae672/json-api-doc-0.15.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/json-api-doc-0.15.0"

LICENSE="BSD"
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
