# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Nibe heatpump communication library"
HOMEPAGE="https://github.com/yozik04/nibe"
SRC_URI="https://files.pythonhosted.org/packages/e7/ad/f0226424e69155dbd3a78af931c1c285d9b1a062115f4c12d8bf1d57207b/nibe-2.17.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/nibe-2.17.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/construct-2.10.0[${PYTHON_USEDEP}]
	<dev-python/construct-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/async-modbus-0.2.2[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/tenacity-8.0.0[${PYTHON_USEDEP}]
	>=dev-python/exceptiongroup-1.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
