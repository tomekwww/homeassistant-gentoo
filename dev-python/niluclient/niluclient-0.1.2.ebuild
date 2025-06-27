# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An API client for getting pollution data from NILU sensor stations in Norway"
HOMEPAGE="https://github.com/hfurubotten/niluclient"
SRC_URI="https://files.pythonhosted.org/packages/80/23/1e1f75cf22d509a9806a717dc8469046a099bcb24a73a4dc9f5b411eff7c/niluclient-0.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/niluclient-0.1.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
