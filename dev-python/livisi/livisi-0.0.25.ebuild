# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Connection library for the abandoned Livisi Smart Home system"
HOMEPAGE="https://pypi.org/project/livisi/"
SRC_URI="https://files.pythonhosted.org/packages/08/18/bf943eda564bbd8fbb90ed12cf77dc87fe216477f387248fe08f5a0749b1/livisi-0.0.25.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/livisi-0.0.25"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/colorlog-6.8.2[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.5[${PYTHON_USEDEP}]
	>=dev-python/websockets-11.0.3[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
