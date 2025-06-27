# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library of psychrometric functions to calculate thermodynamic properties of air"
HOMEPAGE="https://github.com/psychrometrics/psychrolib"
SRC_URI="https://files.pythonhosted.org/packages/db/d2/f32c2db16c3a5a76a75897f854dbb28228f43a192f0b398f31f7b774e9b9/PsychroLib-2.5.0.zip -> ${P}.gh.zip"
S="${WORKDIR}/PsychroLib-2.5.0"

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
