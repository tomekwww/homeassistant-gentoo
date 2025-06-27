# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="PRAW an acronym for Python Reddit API Wrapper is a python package that allows for simple access to reddits API"
HOMEPAGE="https://pypi.org/project/praw/"
SRC_URI="https://files.pythonhosted.org/packages/2a/de/1c91dca0ea332bc06a0ed4649dd01f8a2e058299a4cb8252c1a264b12eec/praw-7.5.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/praw-7.5.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/prawcore-2.1.0[${PYTHON_USEDEP}]
	<dev-python/prawcore-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/update-checker-0.18.0[${PYTHON_USEDEP}]
	>=dev-python/websocket-client-0.54.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
