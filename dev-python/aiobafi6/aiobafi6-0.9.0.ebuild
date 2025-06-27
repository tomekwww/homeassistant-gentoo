# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Big Ass Fans i6Haiku protocol asynchronous Python library"
HOMEPAGE="https://github.com/jfroy/aiobafi6"
SRC_URI="https://files.pythonhosted.org/packages/b8/75/410d61f4f6476798781f1370b7bdb34fdb31de962ebc8184d75c88f9f0db/aiobafi6-0.9.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiobafi6-0.9.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/protobuf-3.20.0[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.38.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
