# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Discover and control ANEL NETPwrCtrl devices"
HOMEPAGE="https://pypi.org/project/anel-pwrctrl-homeassistant/"
SRC_URI="https://files.pythonhosted.org/packages/af/43/8621bd42497f557889173f3712e33adcbb374b01f9d3ec4978ec5bd1dc1b/anel_pwrctrl-homeassistant-0.0.1.dev2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/anel_pwrctrl-homeassistant-0.0.1.dev2"

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
