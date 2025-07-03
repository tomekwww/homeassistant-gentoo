# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Minimalistic Python client for the NextBus public API for realtime transit arrival data"
HOMEPAGE="https://github.com/vividboarder/py_nextbus"
SRC_URI="https://files.pythonhosted.org/packages/4a/44/aaa3b329f8548da1870f6edf778cc5164a8adb3f0e8f226d41b7b6341738/py_nextbusnext-2.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/py_nextbusnext-2.3.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
