# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for the Mastodon API"
HOMEPAGE="https://pypi.org/project/Mastodon.py/"
SRC_URI="https://files.pythonhosted.org/packages/d4/40/8f962b2d1782fd097ea45a344094df7d56f980f1d64c62de0bfa1ef5b0fc/mastodon_py-2.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/mastodon_py-2.0.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.4.2[${PYTHON_USEDEP}]
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/python-magic[${PYTHON_USEDEP}]
	>=dev-python/decorator-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/blurhash-1.1.4[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
