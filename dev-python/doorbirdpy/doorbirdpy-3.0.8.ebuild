# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for the DoorBird LAN API"
HOMEPAGE="https://gitlab.com/klikini/doorbirdpy"
SRC_URI="https://files.pythonhosted.org/packages/e4/d1/ed122a6804765d2440da70edfb546300dba6a15ed37ab76d657f7dc991d3/doorbirdpy-3.0.8.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/doorbirdpy-3.0.8"

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
