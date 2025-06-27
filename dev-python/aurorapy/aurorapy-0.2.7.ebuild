# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python implementation of Aurora Protocol"
HOMEPAGE="https://gitlab.com/energievalsabbia/aurorapy"
SRC_URI="https://files.pythonhosted.org/packages/04/14/91ade78619d2663a3f52aa0342abe1b1caba417eacb6044e377ecdd39fa5/aurorapy-0.2.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aurorapy-0.2.7"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyserial-3.2.1[${PYTHON_USEDEP}]
	>=dev-python/future-0.16.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
