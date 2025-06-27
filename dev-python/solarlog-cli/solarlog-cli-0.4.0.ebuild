# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library to access the SolarLog"
HOMEPAGE="https://pypi.org/project/solarlog-cli/"
SRC_URI="https://files.pythonhosted.org/packages/a4/f9/56bf82ec54ba73a3563e71b7a36562e0f17e274c4ed69fcbb9546128b5a7/solarlog_cli-0.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/solarlog_cli-0.4.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.13.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
