# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A package to get read only data from Anova precision cookers with wifi"
HOMEPAGE="https://github.com/Lash-L/anova-wifi"
SRC_URI="https://files.pythonhosted.org/packages/a4/29/270d4f9f0d7b3da5881dc709f977f2d67f7756cbccbe1b70d10316c14edb/anova_wifi-0.17.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/anova_wifi-0.17.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.3[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
