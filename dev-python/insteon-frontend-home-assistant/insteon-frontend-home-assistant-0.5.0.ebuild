# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="The Insteon frontend for Home Assistant"
HOMEPAGE="https://pypi.org/project/insteon-frontend-home-assistant/"
SRC_URI="https://files.pythonhosted.org/packages/da/9f/589717619beeea513e06bf072047e288a2811ca2495772c19424d0107908/insteon-frontend-home-assistant-0.5.0.post1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/insteon-frontend-home-assistant-0.5.0"

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
