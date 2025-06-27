# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous library to control Rollease Acmeda Automate roller blinds via a version 1 Pulse Hub"
HOMEPAGE="https://pypi.org/project/aiopulse/"
SRC_URI="https://files.pythonhosted.org/packages/68/4f/405ebdc4b8c494c009ff77c337460272ddb85dbfd1311569033eb9bde0b7/aiopulse-0.4.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiopulse-0.4.6"

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
