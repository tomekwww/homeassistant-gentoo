# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Client for the LG Smart TV running NetCast 3 or 4"
HOMEPAGE="https://github.com/Drafteed/python-lgnetcast"
SRC_URI="https://files.pythonhosted.org/packages/ad/ba/deb9f1943487086ab899b8b67577c619c82811f2c99e301dbd0f6528df54/pylgnetcast-0.3.9.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pylgnetcast-0.3.9"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
