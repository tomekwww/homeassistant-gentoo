# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python implementation of the La Marzocco API"
HOMEPAGE="https://pypi.org/project/pylamarzocco/"
SRC_URI="https://files.pythonhosted.org/packages/9a/39/2e62db9719a52c27774272628a593ad237dcea1c146341309b0279570581/pylamarzocco-2.0.11.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pylamarzocco-2.0.11"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bleak-0.20.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.0.0[${PYTHON_USEDEP}]
"

src_prepare() {
    echo -ne '\n[build-system]\nrequires = ["setuptools"]\nbuild-backend = "setuptools.build_meta"\n' >> pyproject.toml || die
    distutils-r1_src_prepare
}

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
