# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for Unifi Protect Unofficial"
HOMEPAGE="https://pypi.org/project/uiprotect/"
SRC_URI="https://files.pythonhosted.org/packages/cf/d1/4be5f919c75600e6d4303ebde2c9a3fd451cd346ceb1c23b221e1cd5cbb2/uiprotect-7.11.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/uiprotect-7.11.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiofiles-24.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.10.0[${PYTHON_USEDEP}]
	>=dev-python/aioshutil-1.3.0[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-3.0.1[${PYTHON_USEDEP}]
	>=dev-python/convertertools-0.5.0[${PYTHON_USEDEP}]
	>=dev-python/dateparser-1.1.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.15[${PYTHON_USEDEP}]
	>=dev-python/packaging-23.0.0[${PYTHON_USEDEP}]
	>=dev-python/pillow-10.0.0[${PYTHON_USEDEP}]
	>=dev-python/platformdirs-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/propcache-0.0.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-2.10.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-extra-types-2.10.1[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-2.6.0[${PYTHON_USEDEP}]
	>=dev-python/rich-10.0.0[${PYTHON_USEDEP}]
	>=dev-python/typer-0.12.3[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.9.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
