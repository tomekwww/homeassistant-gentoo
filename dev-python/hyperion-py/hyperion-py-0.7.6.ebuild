# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Hyperion Ambient Lighting Python Package"
HOMEPAGE="https://github.com/dermotduffy/hyperion-py"
SRC_URI="https://files.pythonhosted.org/packages/df/da/3204d82ac6ab2f4303d4b201a9ae9f087d4f288f030d7d7f7e9a26fcb1e1/hyperion_py-0.7.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/hyperion_py-0.7.6"

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
