# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Hyperion Ambient Lighting Python Package"
HOMEPAGE="https://github.com/dermotduffy/hyperion-py"
SRC_URI="https://files.pythonhosted.org/packages/f6/fb/f18c82436ce004d6bb54670f6ebd5e13641ea85c2600cfcda68f5cd345a3/hyperion-py-0.7.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/hyperion-py-0.7.5"

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
