# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A generic library to interact with a Probe Plus BLE device"
HOMEPAGE="http://github.com/pantherale0/pyprobeplus"
SRC_URI="https://files.pythonhosted.org/packages/b9/34/876a4ca27a45b5575e0d414207c24863d065b82a217a995c86340a662cb5/pyprobeplus-1.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyprobeplus-1.0.1"

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
