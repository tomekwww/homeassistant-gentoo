# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for zwavejsserver"
HOMEPAGE="https://pypi.org/project/zwave-js-server-python/"
SRC_URI="https://files.pythonhosted.org/packages/49/6d/e4c5328c1c5cd7301efb2630933293f7ea9da3cfb432b88a8bd107d44666/zwave_js_server_python-0.63.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/zwave_js_server_python-0.63.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-1.10.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
