# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to communicate with the Viessmann ViCare API"
HOMEPAGE="https://pypi.org/project/PyViCare/"
SRC_URI="https://files.pythonhosted.org/packages/3f/33/5c772e0f089fd3726f9344bcb047e460b0335b9ac9df096141030470dbef/pyvicare-2.50.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyvicare-2.50.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>dev-python/authlib-1.2.0[${PYTHON_USEDEP}]
	<dev-python/deprecated-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/deprecated-1.2.15[${PYTHON_USEDEP}]
	>=dev-python/requests-2.31.0[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
