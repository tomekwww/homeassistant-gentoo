# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to control webOS based LG TV devices"
HOMEPAGE="https://pypi.org/project/aiowebostv/"
SRC_URI="https://files.pythonhosted.org/packages/10/86/fb8fb2b2e16a229c66302324b2a1127c1401397ffe67a2d7f686d371c939/aiowebostv-0.7.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiowebostv-0.7.4"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.0[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
