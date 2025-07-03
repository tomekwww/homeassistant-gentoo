# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Module to communicate with a Balboa spa wifi adapter"
HOMEPAGE="https://github.com/garbled1/pybalboa"
SRC_URI="https://files.pythonhosted.org/packages/3c/ca/78333e5e5c27f6d2381b4c4b9107d451f3a7700853769fc5d629a084d5fa/pybalboa-1.1.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pybalboa-1.1.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"


src_prepare() {
    sed 's/0.0.0/${PV}/g' -i pyproject.toml || die
    sed 's/, "poetry-dynamic-versioning"//g' -i pyproject.toml || die
    sed 's/poetry_dynamic_versioning.backend/poetry.core.masonry.api/g' -i pyproject.toml || die
    distutils-r1_src_prepare
}

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
