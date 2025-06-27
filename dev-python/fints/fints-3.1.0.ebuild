# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Purepython FinTS 30 formerly known as HBCI implementation"
HOMEPAGE="https://github.com/raphaelm/python-fints"
SRC_URI="https://files.pythonhosted.org/packages/5e/75/d4f62f22d46229ceaa54b9fe8f6a5e714732eaf5dc6c2cf39d6cc575fcce/fints-3.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/fints-3.1.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/bleach[${PYTHON_USEDEP}]
	dev-python/mt_940[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	<dev-python/sepaxml-3.1.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
