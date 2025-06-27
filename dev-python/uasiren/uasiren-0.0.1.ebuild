# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Implements sirenppua API  public wrapper for apiukrainealarmcom API that returns info about Ukraine airraid alarms"
HOMEPAGE="https://github.com/PaulAnnekov/uasiren"
SRC_URI="https://files.pythonhosted.org/packages/43/ed/59d2366e795aa19950347c291f25dd6a28a05117e77d8db13b8c7e184c5e/uasiren-0.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/uasiren-0.0.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
