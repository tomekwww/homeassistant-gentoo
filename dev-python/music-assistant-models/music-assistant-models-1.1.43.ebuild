# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Music Assistant Base Models"
HOMEPAGE="https://pypi.org/project/music-assistant-models/"
SRC_URI="https://files.pythonhosted.org/packages/78/0b/f7724b37d54dd03a286457bc122a7d3d611e6e889a72f91d5ff4d2134d51/music_assistant_models-1.1.43.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/music_assistant_models-1.1.43"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/orjson-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.14.0[${PYTHON_USEDEP}]
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
