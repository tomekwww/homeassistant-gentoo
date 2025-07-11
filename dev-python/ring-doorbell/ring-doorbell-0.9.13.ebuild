# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library to communicate with Ring Door Bell httpsringcom"
HOMEPAGE="https://pypi.org/project/ring-doorbell/"
SRC_URI="https://files.pythonhosted.org/packages/42/fb/bd2c1466525c0e67d5486be366065c2133925362351ac06ecd6e61ac330e/ring_doorbell-0.9.13.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ring_doorbell-0.9.13"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiofiles-23.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/asyncclick-8.1.7[${PYTHON_USEDEP}]
	>=dev-python/firebase-messaging-0.4.0[${PYTHON_USEDEP}]
	>=dev-python/oauthlib-3.0.0[${PYTHON_USEDEP}]
	<dev-python/oauthlib-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/pytz-2022.0.0[${PYTHON_USEDEP}]
	<dev-python/typing-extensions-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.12.2[${PYTHON_USEDEP}]
	>=dev-python/websockets-13.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
