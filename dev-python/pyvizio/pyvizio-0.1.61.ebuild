# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for interfacing with Vizio SmartCast TVs and Sound Bars 2016 models"
HOMEPAGE="https://github.com/vkorn/pyvizio"
SRC_URI="https://files.pythonhosted.org/packages/60/97/a9e977a44617916f94a70b2f0f333eff275b9d2b5039975c86e8c7634016/pyvizio-0.1.61.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyvizio-0.1.61"

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
