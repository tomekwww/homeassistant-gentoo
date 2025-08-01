# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python iCalendar implementation rfc 2445"
HOMEPAGE="https://github.com/allenporter/ical"
SRC_URI="https://files.pythonhosted.org/packages/89/c2/48593501904826043aa758ac664309e8048c3a67a0826a292c4b439df456/ical-10.0.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ical-10.0.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/python-dateutil-2.8.2[${PYTHON_USEDEP}]
	>=dev-python/tzdata-2023.3.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-2.10.4[${PYTHON_USEDEP}]
	>=dev-python/pyparsing-3.0.9[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
