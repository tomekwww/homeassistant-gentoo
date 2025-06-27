# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Wrapper for psutil to allow it to be used several times in the same process"
HOMEPAGE="https://github.com/home-assistant-libs/psutil-home-assistant"
SRC_URI="https://files.pythonhosted.org/packages/01/4f/32a51f53d645044740d0513a6a029d782b35bdc51a55ea171ce85034f5b7/psutil-home-assistant-0.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/psutil-home-assistant-0.0.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/psutil[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
