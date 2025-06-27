# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An asynchronous Python library for communicating with the OctoPrint API"
HOMEPAGE="https://github.com/rfleming71/pyoctoprintapi"
SRC_URI="https://files.pythonhosted.org/packages/6d/fb/aaedf5a56e9049fcc3097b30941f029ebc541ebd9a40013e051a973eef66/pyoctoprintapi-0.1.12.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyoctoprintapi-0.1.12"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
