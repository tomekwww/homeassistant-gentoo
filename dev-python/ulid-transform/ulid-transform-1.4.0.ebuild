# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Create and transform ULIDs"
HOMEPAGE="https://pypi.org/project/ulid-transform/"
SRC_URI="https://files.pythonhosted.org/packages/d4/f2/16c8e6f3d82debedeb1b09bec889ad4a1ca8a71d2d269c156dd80d049c2e/ulid_transform-1.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ulid_transform-1.4.0"

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
