# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to emulate a roku server to serve as a proxyfor remotes such as Harmony"
HOMEPAGE="https://gitlab.com/mindig.marton/emulated_roku"
SRC_URI="https://files.pythonhosted.org/packages/a2/42/3635b7eb4c6fbfec354f69a834be308183c36962a4b7bd298c7b1cfbe5fe/emulated_roku-0.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/emulated_roku-0.3.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
