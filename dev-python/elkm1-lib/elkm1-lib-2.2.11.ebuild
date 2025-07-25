# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library for interacting with ElkM1 alarmautomation panel"
HOMEPAGE="https://pypi.org/project/elkm1-lib/"
SRC_URI="https://files.pythonhosted.org/packages/86/8d/e4c2bac1d4e455d3a048fc67493234daa8266d81affc18024b81637cb8bf/elkm1_lib-2.2.11.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/elkm1_lib-2.2.11"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyserial-asyncio-fast-0.11.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
