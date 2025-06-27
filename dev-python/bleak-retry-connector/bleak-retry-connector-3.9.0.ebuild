# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A connector for Bleak Clients that handles transient connection failures"
HOMEPAGE="https://pypi.org/project/bleak-retry-connector/"
SRC_URI="https://files.pythonhosted.org/packages/27/af/09820adb3c221ecdcf5973db23f5dc27927023898d5f745255af7983299d/bleak_retry_connector-3.9.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/bleak_retry_connector-3.9.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bleak-0.21.0[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-adapters-0.15.2[${PYTHON_USEDEP}]
	>=dev-python/dbus-fast-1.14.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
