# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library implementing Zigpy quirks for ZHA in Home Assistant"
HOMEPAGE="https://pypi.org/project/zha-quirks/"
SRC_URI="https://files.pythonhosted.org/packages/9a/bf/f7b71b8d73038b5d4b20673ab6c110970b3da33094354e3a3feef7232f68/zha_quirks-0.0.139.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/zha_quirks-0.0.139"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/zigpy-0.80.0[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
