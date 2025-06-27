# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="EngineIO server"
HOMEPAGE="http://github.com/bdraco/python-engineio-v3/"
SRC_URI="https://files.pythonhosted.org/packages/ea/fb/491ad0a5d766cc075f4e29b0e49dba0ee903d83970935a6d491e112a75e2/python-engineio-v3-3.14.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python-engineio-v3-3.14.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/six-1.9.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
