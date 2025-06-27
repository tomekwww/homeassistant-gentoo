# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python package for interacting with all aspects of the Pushover API"
HOMEPAGE="https://pypi.org/project/pushover-complete/"
SRC_URI="https://files.pythonhosted.org/packages/e6/09/78c00d2f1c50f6cd99181db83461dbaa617a840d48854f6a240a9bcc8f4f/pushover_complete-1.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pushover_complete-1.2.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
