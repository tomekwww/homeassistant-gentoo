# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A simple Python 3 library for Notion Home Monitoring"
HOMEPAGE="https://github.com/bachya/aionotion"
SRC_URI="https://files.pythonhosted.org/packages/35/27/672ac989a9b446511e1b05bb2f5e8d52f0b18d6115690651b27d8fa54843/aionotion-2024.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aionotion-2024.3.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyjwt-2.4.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/certifi-2023.7.22[${PYTHON_USEDEP}]
	>=dev-python/ciso8601-2.3.0[${PYTHON_USEDEP}]
	<dev-python/ciso8601-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/frozenlist-1.4.0[${PYTHON_USEDEP}]
	<dev-python/frozenlist-2.0.0[${PYTHON_USEDEP}]
	<dev-python/mashumaro-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.12.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.9.2[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
