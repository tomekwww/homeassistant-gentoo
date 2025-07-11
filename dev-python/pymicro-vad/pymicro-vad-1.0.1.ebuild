# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Selfcontained voice activity detector"
HOMEPAGE="https://github.com/rhasspy/pymicro-vad"
SRC_URI="https://files.pythonhosted.org/packages/2e/0f/a92acea368e2b37fbc706f6d049f04557497d981316a2f428b26f14666a9/pymicro_vad-1.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pymicro_vad-1.0.1"

LICENSE="BSD"
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
