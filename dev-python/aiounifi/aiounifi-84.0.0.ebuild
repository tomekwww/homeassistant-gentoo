# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for communicating with UniFi Network Controller API"
HOMEPAGE="https://pypi.org/project/aiounifi/"
SRC_URI="https://files.pythonhosted.org/packages/0a/d4/7fbaa2b01ce1a863cf8793cc476a362f95fa7b6ff9383e5306c41588c94a/aiounifi-84.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiounifi-84"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
	>dev-python/orjson-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/segno-1.5.2[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
