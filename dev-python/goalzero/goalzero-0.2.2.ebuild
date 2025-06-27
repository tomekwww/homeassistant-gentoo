# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Goal Zero REST Api Library"
HOMEPAGE="https://github.com/tkdrob/goalzero"
SRC_URI="https://files.pythonhosted.org/packages/e3/20/8ae82588aa3ee09c1ae532eb1e7071b8b7e0a5a5ace2b0ee0356e62b2e95/goalzero-0.2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/goalzero-0.2.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.4.4[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
