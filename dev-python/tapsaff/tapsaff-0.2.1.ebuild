# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Provides an API for requesting information from tapsaffcouk"
HOMEPAGE="https://github.com/bazwilliams/python-taps-aff"
SRC_URI="https://files.pythonhosted.org/packages/af/90/4571a13eec9ece3a9a608e0032c2649f511b8872675ab53e0a152b866bc7/tapsaff-0.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/tapsaff-0.2.1"

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
