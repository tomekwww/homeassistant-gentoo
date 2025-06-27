# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python3 library for running asynchronus communications with IntesisHome Smart AC Controllers"
HOMEPAGE="https://github.com/jnimmo/pyIntesisHome"
SRC_URI="https://files.pythonhosted.org/packages/64/33/46d4d8da85fda76779cd3a51a3bd5908423cd201e48c610bad109ca963cc/pyintesishome-1.8.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyintesishome-1.8.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
