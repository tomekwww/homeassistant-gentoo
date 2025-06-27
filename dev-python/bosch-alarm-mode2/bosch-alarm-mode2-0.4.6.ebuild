# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An async Python library for interacting with Bosch Alarm Panels supporting the Mode 2 API"
HOMEPAGE="https://pypi.org/project/bosch-alarm-mode2/"
SRC_URI="https://files.pythonhosted.org/packages/5a/cc/58a995d9b28444869801141552ea241a522460b6277427914c9f1b7b84cb/bosch_alarm_mode2-0.4.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/bosch_alarm_mode2-0.4.6"

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
