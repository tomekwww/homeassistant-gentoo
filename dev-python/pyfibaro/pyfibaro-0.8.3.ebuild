# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Simple API to access fibaro home center from any Python 3 script Designed for Home Assistant but not only"
HOMEPAGE="https://github.com/rappenze/pyfibaro"
SRC_URI="https://files.pythonhosted.org/packages/2e/50/bb952defe4d1faa7e7968af4d0c89420863bcc8af07ad3ad415bfa969904/pyfibaro-0.8.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyfibaro-0.8.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/requests-3.32.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
