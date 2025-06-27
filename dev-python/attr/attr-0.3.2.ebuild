# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Simple decorator to set attributes of target function or class in a DRY way"
HOMEPAGE="https://github.com/denis-ryzhkov/attr"
SRC_URI="https://files.pythonhosted.org/packages/e4/d2/d0a5e36049ec6f72f4951b7f843b359d21e5a208b120618686187234dd1d/attr-0.3.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/attr-0.3.2"

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
