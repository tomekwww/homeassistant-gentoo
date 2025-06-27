# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library to access the FYTA API"
HOMEPAGE="https://pypi.org/project/fyta-cli/"
SRC_URI="https://files.pythonhosted.org/packages/eb/f0/f690f97a56c5cdde4334a63cc415ca4d4877a56c7030b82c376792ffd10c/fyta_cli-0.7.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/fyta_cli-0.7.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.13.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
