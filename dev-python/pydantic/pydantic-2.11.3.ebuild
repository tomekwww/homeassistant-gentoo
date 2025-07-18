# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Data validation using Python type hints"
HOMEPAGE="https://pypi.org/project/pydantic/"
SRC_URI="https://files.pythonhosted.org/packages/10/2e/ca897f093ee6c5f3b0bee123ee4465c50e75431c3d5b6a3b44a47134e891/pydantic-2.11.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pydantic-2.11.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/annotated-types-0.6.0[${PYTHON_USEDEP}]
	~dev-python/pydantic-core-2.33.1[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.12.2[${PYTHON_USEDEP}]
	>=dev-python/typing-inspection-0.4.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
