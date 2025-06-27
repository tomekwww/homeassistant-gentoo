# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Intents for Home Assistant"
HOMEPAGE="https://pypi.org/project/home-assistant-intents/"
SRC_URI="https://files.pythonhosted.org/packages/50/81/b4e5d9be9402540e9f483e042d70b705978105680269e6ad9a11bd0e17a6/home_assistant_intents-2025.6.10.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/home_assistant_intents-2025.6.10"

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
