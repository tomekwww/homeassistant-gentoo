# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python wrapper around the Agent REST API"
HOMEPAGE="https://github.com/ispysoftware/agent-py"
SRC_URI="https://files.pythonhosted.org/packages/2d/ba/80080484ba35a5438277da6eb5359e056ca19f697fe8892cf10dee931853/agent-py-0.0.24.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/agent-py-0.0.24"

LICENSE="BSD"
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
