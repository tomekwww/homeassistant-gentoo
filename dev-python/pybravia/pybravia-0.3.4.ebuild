# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python async library for remote control of Sony Bravia TVs 2013 and newer"
HOMEPAGE="https://github.com/Drafteed/pybravia"
SRC_URI="https://files.pythonhosted.org/packages/77/2a/249ef769c02d62b9185da3f8f426a44a2745c6969411a6e973ba3fe94a3c/pybravia-0.3.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pybravia-0.3.4"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
