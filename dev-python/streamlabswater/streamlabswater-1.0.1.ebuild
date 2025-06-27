# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Unofficial Python library for the Streamlabs Water API"
HOMEPAGE="https://github.com/cpopp/streamlabswater-python"
SRC_URI="https://files.pythonhosted.org/packages/fb/e7/5c116f997010e8a9244d419719052c4152dd690c5df868c4616209f9f2b2/streamlabswater-1.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/streamlabswater-1.0.1"

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
