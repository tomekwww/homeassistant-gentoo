# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async Python 3 client for WebDAV based on aiowebdav and httpsgithubcomezhovevgenywebdavclientpython3"
HOMEPAGE="https://pypi.org/project/aiowebdav2/"
SRC_URI="https://files.pythonhosted.org/packages/3f/1a/cb2099e74394c2e9332baee82d540bcd0fdbcf68ec18bdb0f51d9a04cc0f/aiowebdav2-0.4.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiowebdav2-0.4.6"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiofiles-0.7.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	>=dev-python/lxml-5.3.0[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.9.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.18.3[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
