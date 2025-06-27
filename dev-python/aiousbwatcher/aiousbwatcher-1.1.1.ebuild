# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Watch for USB devices to be plugged and unplugged"
HOMEPAGE="https://pypi.org/project/aiousbwatcher/"
SRC_URI="https://files.pythonhosted.org/packages/12/f9/e33c468d2f04555552bff81ead9657c3f6067628a9a34b126f2e23e0c81a/aiousbwatcher-1.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiousbwatcher-1.1.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/asyncinotify-4.2.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
