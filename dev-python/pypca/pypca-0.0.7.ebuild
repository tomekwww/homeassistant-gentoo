# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python cli for PCA 301 smart plugs"
HOMEPAGE="http://www.github.com/majuss/pypca"
SRC_URI="https://files.pythonhosted.org/packages/43/17/3c986fdec0af60ff9614265b50f411b3f3d13cbd673e775192020950a61f/pypca-0.0.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pypca-0.0.7"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/colorlog[${PYTHON_USEDEP}]
	dev-python/pyserial[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
