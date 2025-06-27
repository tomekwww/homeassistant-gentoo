# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asyncio Network UPS Tools"
HOMEPAGE="https://pypi.org/project/aionut/"
SRC_URI="https://files.pythonhosted.org/packages/3d/1a/87db673c9a71667bcbf68702c6526ed577a735046e72e9f50f72d466d1e8/aionut-4.3.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aionut-4.3.4"

LICENSE="Apache-2.0"
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
