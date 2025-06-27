# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Retrieve a list of devices from a bt smarthub or bt smarthub 2 on a local network"
HOMEPAGE="https://github.com/jxwolstenholme/btsmarthub_devicelist"
SRC_URI="https://files.pythonhosted.org/packages/c6/a1/c50aefdc873aa34734aa66baabacd52f6a00bbf75bd688d706ef5daa5e1f/btsmarthub_devicelist-0.2.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/btsmarthub_devicelist-0.2.3"

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
