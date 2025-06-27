# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Open World Holidays Framework"
HOMEPAGE="https://pypi.org/project/holidays/"
SRC_URI="https://files.pythonhosted.org/packages/55/67/d7aa1b268d7d9ed145e3a18a549d5e4622d1115fb1228df99e31601a2a80/holidays-0.74.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/holidays-0.74"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/python-dateutil[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
