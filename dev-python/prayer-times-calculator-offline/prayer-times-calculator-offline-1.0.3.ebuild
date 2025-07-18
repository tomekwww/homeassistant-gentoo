# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Prayer Times Calculator  Offline"
HOMEPAGE="https://pypi.org/project/prayer-times-calculator-offline/"
SRC_URI="https://files.pythonhosted.org/packages/d4/c6/88c48725e3603f8e6eb95935eca17b857a131bb7dd72b2f4d49538015cb6/prayer_times_calculator_offline-1.0.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/prayer_times_calculator_offline-1.0.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

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
